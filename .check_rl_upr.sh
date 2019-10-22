#!/bin/bash

rsync -avz --stats --exclude-from ./.rl_upr.rsyncignore \
  --dry-run \
  --delete \
  wgao@upr:~/GitHub/RemoteServer-Workflow/ \
  ~/Github/RemoteServer-Workflow/
