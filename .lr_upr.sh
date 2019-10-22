#!/bin/bash

rsync -avz --stats --exclude-from ./.lr_upr.rsyncignore \
    --delete \
    ~/Github/RemoteServer-Workflow/ \
    wgao@upr:~/GitHub/RemoteServer-Workflow/