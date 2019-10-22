#!/bin/bash

rsync -avz --stats --exclude-from ./.rsyncignore_rl_upr \
  --delete \
  wgao@upr:~/GitHub/RemoteServer-Workflow/ \
  ~/Github/RemoteServer-Workflow/
