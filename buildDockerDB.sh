#!/bin/bash

# Requires: 
#   - the Docker Engine to be running
#   - the working directory to be repo download folder
# The script will throw errors if either of these are not satisfied.

# remove all containers (force)
# docker rm -vf $(docker ps -a -q)

# check in repo directory (by folder name)
HERE=${PWD##*/}         
if [[ $HERE != "db-to-ml-pipeline" ]]; then
    echo -e "\n\033[31mWORKING DIRECTORY ERROR \033[0m"
    echo -e "Please change working directory to folder where you downloaded the repository.\n"
    exit 1;
fi

echo "Building Docker image..."

docker build -t oracle-db-img . \
&& echo -e "\nImage built!"

# Get image and start up Docker container
echo "Starting up Docker container for database..."

docker run -d \
    --name oracle-xe-db \
    -e ORACLE_PASSWORD=password1234 \
    -p 1521:1521 \
    oracle-db-img \
&& echo "Container online!"

if [ $? -ne 0 ]; then
    exit 125;
fi

# uses Oracle script checkDBStatus.sh from their docker-images repo on GitHub
# the script exits non-zero until DB is set up in container
until docker exec oracle-xe-db bash ./DBSetupScripts/checkDBStatus.sh; do
    echo -e "\nStill waiting for database in container to come online. "
    for sec in {5..1}; do
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
