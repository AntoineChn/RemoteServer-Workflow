#!/bin/bash

rsync -avz --stats --exclude-from ./.rl_upr.rsyncignore \
  --delete \
  wgao@upr:~/GitHub/RemoteServer-Workflow/ \
  ~/Github/RemoteServer-Workflow/
