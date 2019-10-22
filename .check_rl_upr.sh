#!/bin/bash

rsync -avz --stats --exclude-from ./.rsyncignore_rl_upr \
  --dry-run \
  --delete \
  wgao@upr:~/GitHub/RemoteServer-Workflow/ \
  ~/Github/RemoteServer-Workflow/
