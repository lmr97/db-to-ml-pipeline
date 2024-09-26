#!/bin/bash

# Requires: 
#   - the Docker Engine to be running
#   - the working directory to be repo download folder
# The script will throw errors if either of these are not satisfied.

# remove all containers (force)
# docker rm -vf $(docker ps -a -q)

# check in repo directory (by folder name)
HERE=${PWD##*/}         
if [[ $HERE != "short-answer-grading" ]]; then
    echo -e "\n\033[31mWORKING DIRECTORY ERROR \033[0m"
    echo -e "Please change working directory to folder where you downloaded the repository.\n"
    exit 1;
fi

# for Ubuntu Linux compatability, will revert upon cleanup script
unprivNamespaceSetting=$(sysctl --values --binary kernel.apparmor_restrict_unprivileged_userns)

if [ $unprivNamespaceSetting -ne 0 ]; then
    echo $unprivNamespaceSetting > unprivNamespaceSetting.txt
    sudo sysctl --write  kernel.apparmor_restrict_unprivileged_userns=0
fi


# install Python Oracle library (locally, not in container)
echo -e "Making sure required Python libraries are installed...\n"

pip install oracledb

# Get image and start up Docker container
echo "Starting up Docker container for database..."
echo "(pulling image if necessary)"

docker run -d \
    --pull missing \
    --name oracle-xe-db \
    -e ORACLE_PWD="password1234" \
    -p 1521:1521 \
    -v "${PWD}/DBSetupScripts":"/home/oracle/DBSetupScripts" \
    container-registry.oracle.com/database/express:latest \
&& echo "Container online!"

if [ $? -ne 0 ]; then
    exit 125;
fi

# uses Oracle script checkDBStatus.sh from their docker-images repo on GitHub
# the script exits non-zero until DB is set up in container
until docker exec oracle-xe-db bash ./DBSetupScripts/checkDBStatus.sh; do
    echo -e "\nStill waiting for database in container to come online. "
    for sec in {19..0}; do
        echo -ne " Will check again in $sec seconds.\r"
        sleep 1
    done
    echo -e "\nChecking..."
done

# Define DB and load data into tables
echo "Database online!"
echo "Defining schema and inserting data..."
 
for SQLSCRIPT in ./DBSetupScripts/*.sql; do 
    docker exec oracle-xe-db sqlplus -s system/password1234 @${SQLSCRIPT}
done

echo -e "\n\033[92mSetup script complete! Database is ready for use.\033[0m\n"
exit 0
