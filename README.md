# Provision a fresh macOS install

Installs and configures a bunch of my preferred tools, apps, etc.

## How to

- Download/checkout the repo: `git clone https://github.com/rnagle/macos.git`
- Place id_rsa, id_rsa.pub and config in files/ssh before running `provision.sh`
- Run `./provision.sh`

## Notes

- Requires sudo. You'll have to provide your password for the install to work.
- Need your .ssh files at minimum. Remember to fetch other private files after provisioning.

## What's included?

- Apps:
    - Chrome
    - Dropbox
    - HipChat
    - Slack
    - Vagrant
    - Virtualbox
- Packages:
    - See `tasks/packages.yml`
- Shell:
    - Change login shell to zsh
    - Installs oh-my-zsh
- SSH:
    - Syncs files/ssh/ -> ~/.ssh/ (OR you can put your keys directly in ~/.ssh before provisioning)
    - Uses ssh to clone repos from Github, so this is required
- Python specific:
    - Installs virtualenv and virtualenvwrapper
- Macvim:
    - Uses Janus
    - Installs my Janus config

## TODO:
    - Configure `rbenv`
    - Configure `go` related stuff
