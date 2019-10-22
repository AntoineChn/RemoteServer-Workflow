#!/bin/bash

rsync -avz --stats --exclude-from ./.rsyncignore_pull_from_upr \
  --dry-run \
  --delete \
  wgao@upr:~/GitHub/RemoteServer-Workflow/ \
  ~/Github/RemoteServer-Workflow/
