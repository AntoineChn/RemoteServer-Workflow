
# RemoteServer-Workflow

## Objectif

- Computation on remote server
- backup on local machine
- set up version control
- sync with GitHub

## WorkFlow

- Git push / pull to local
- `rsync` push to upr : git repository as sub-folder of wgao@upr:wgao@upr:~/GitHub/
  - prepare `.lr_upr.rsyncignore`
    - .DS_Store
    - .vscode
    - .Rhistory
    - .Rproj.user
    - .Rdata
    - .Ruserdata
  - check : `dry-run` with `--delete`
    - write bash script : `.check_lr_upr.sh` (local to remote upr)

    ```bash
    rsync -avz --stats --exclude-from ./.lr_upr.rsyncignore \
      --delete \
      --dry-run \
      ~/Github/RemoteServer-Workflow/ \
      wgao@upr:~/GitHub/RemoteServer-Workflow/
    ```

  - synchronisation with `--delete`
    - write bash script : `.lr_upr.sh` (local to remote upr)

    ```bash
    rsync -avz --stats --exclude-from ./.lr_upr.rsyncignore \
      --delete \
      ~/Github/RemoteServer-Workflow/ \
      wgao@upr:~/GitHub/RemoteServer-Workflow/
    ```

- `rsync` pull from upr
  - prepare `.rl_upr.rsyncignore` by adding <span style="color:red">.git</span> to it
    > .DS_Store
    > .vscode
    > .Rhistory
    > .Rproj.user
    > .Rdata
    > .Ruserdata
    > .git # <-- don't download from upr

  - check : `dry-run` with `--delete`
    - write bash script : `.check_rl_upr.sh` (local to remote upr)

    ```bash
    rsync -avz --stats --exclude-from ./.rl_upr.rsyncignore \
      --dry-run \
      --delete \
      wgao@upr:~/GitHub/RemoteServer-Workflow/ \
      ~/Github/RemoteServer-Workflow/
    ```

  - synchronisation with `--delete`
    - write bash script : `.rl_upr.sh` (remote upr to local)

    ```bash
    rsync -avz --stats --exclude-from ./.rl_upr.rsyncignore \
      --delete \
      wgao@upr:~/GitHub/RemoteServer-Workflow/ \
      ~/Github/RemoteServer-Workflow/
    ```

## Others

Wang add alias to call bash scripts

> alias checklr_upr='./.check_lr_upr.sh'
> alias lr_upr='./.lr_upr.sh'
> alias checkrl_upr='./.check_rl_upr.sh'
> alias rl_upr='./.rl_upr.sh'

These aliases are currently in `~/.zshrc`
