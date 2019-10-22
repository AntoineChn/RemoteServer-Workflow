#!/bin/bash

rsync -avz --stats --exclude-from ./.rsyncignore_push_to_upr \
    --delete \
    --dry-run \
    ~/Github/RemoteServer-Workflow/ \
    wgao@upr:~/GitHub/RemoteServer-Workflow/