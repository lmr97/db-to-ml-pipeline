#!/bin/bash

for SCRIPT in ./Clean_and_org/*.py; do 
    python3 ${SCRIPT}
done

exit 0;
