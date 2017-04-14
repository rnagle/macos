# Provision a fresh macOS install

Installs and configures a bunch of my preferred tools, apps, etc.

## How to

- Download/checkout the repo: `git clone https://github.com/rnagle/macos.git`
- Place id_rsa, id_rsa.pub and config in files/ssh (depends on *rsa files)
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
    - Copies
        - files/ssh/id_rsa -> ~/.ssh/id_rsa
        - files/ssh/id_rsa.pub -> ~/.ssh/id_rsa.pub
        - files/ssh/config -> ~/.ssh/config
- Python specific:
    - Installs virtualenv and virtualenvwrapper
- Macvim:
    - Installs macvim as a part of `tasks/packages.yml`
    - Uses Janus
    - Installs my Janus config

## TODO:
    - Configure `rbenv`
    - Configure `go` related stuff
    - Would be nice if apps were installed at the latest version available
