#!/bin/bash

#set permission for /config
chown -R orpheus:orpheus /config

#run orpheusbetter as orpheus
su - orpheus -c "cd $(pwd); ./orpheusbetter $@"
