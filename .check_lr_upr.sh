#!/bin/bash

rsync -avz --stats --exclude-from ./.rsyncignore_lr_upr \
    --delete \
    --dry-run \
    ~/Github/RemoteServer-Workflow/ \
    wgao@upr:~/GitHub/RemoteServer-Workflow/