#!/bin/bash

# This script deletes the container and removes the image as well.
# I assume you didn't pull the image and run the container for any other
# reason than to test the project.

docker container rm oracle-xe-db
docker image rm container-registry.oracle.com/database/express

# reverting change made for 24.04+ Ubuntu compatibility
if [ -s ./unprivNamespaceSetting.txt ]; then
    prevSetting=$(cut -c 1 ./unprivNamespaceSetting.txt)
    sudo sysctl --write  kernel.apparmor_restrict_unprivileged_userns=$prevSetting
fi