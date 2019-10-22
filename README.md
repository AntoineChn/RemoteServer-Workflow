# RemoteServer-Workflow

## Objectif

- Computation on remote server
- backup on local machine
- set up version control
- sync with GitHub

## WorkFlow

- Git push / pull to local
- `rsync` push to upr : git repository as sub-folder of wgao@upr:wgao@upr:~/GitHub/
  - prepare `.rsyncignore_push_to_upr`
    - .DS_Store
    - .vscode
    - .Rhistory
    - .Rproj.user
    - .Rdata
    - .Ruserdata
  - test : 
    ```bash
    rsync -avz --exclude-from ./.rsyncignore_push_to_upr \
      --delete \
      --dry-run \
      ~/Github/RemoteServer-Workflow/ \
      wgao@upr:~/GitHub/RemoteServer-Workflow/
    ```
  - run 
    ```bash
    rsync -avz --exclude-from ./.rsyncignore_push_to_upr \
      --delete \
      ~/Github/RemoteServer-Workflow/ \
      wgao@upr:~/GitHub/RemoteServer-Workflow/
    ```
- `rsync` pull from upr
  - prepare `.rsyncignore_pull_from_upr`
    ```
    .DS_Store
    .vscode
    .Rhistory
    .Rproj.user
    .Rdata
    .Ruserdata
    .git
    ```
  - test
    ```bash
    rsync -avz --exclude-from ./.rsyncignore_pull_from_upr \
      --dry-run \
      --delete \
      wgao@upr:~/GitHub/RemoteServer-Workflow/ \
      ~/Github/RemoteServer-Workflow/    
    ```
  - run 
    ```bash
    rsync -avz --exclude-from ./.rsyncignore_pull_from_upr \
      --dry-run \
      --delete \
      wgao@upr:~/GitHub/RemoteServer-Workflow/ \
      ~/Github/RemoteServer-Workflow/
    ```



