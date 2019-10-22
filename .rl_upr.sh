#!/bin/bash

rsync -avz --stats --exclude-from ./.rsyncignore_pull_from_upr \
  --delete \
  wgao@upr:~/GitHub/RemoteServer-Workflow/ \
  ~/Github/RemoteServer-Workflow/
