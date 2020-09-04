# Frog Mac Starter 

This repo consists of apps needed specifically for Frog project.

## Installation

There are a couple of ways to install the apps. 

### Using install.sh 

For this to work all you need to do is run the following command which takes care of pulling the latest version of this repository and installing from there. 

```bash
curl -fsSL https://raw.githubusercontent.com/rvignesh89/frog-mac-starter/v0.2.0/install.sh | bash
```

### Cloning the repo

Just clone this repo and install what you need. This way you have more control on what exactly you want to install.

## Installed apps & tools

Following are the list of apps/tools which will be installed.

- Homebrew
- Google Chrome
- Slack
- Microsoft Teams
- IntelliJ Ultimate
- Android Studio
- xcode
- Webstorm
- Postman
- Mattermost client
- Skype for Business

## Development Environment

- Docker~
- kind
- kubectl
- pyenv
- helm
- AWS CLI
- Terraform
- OpenJDK@11
- gradle
- Oh-My-Zsh
- SSH keys
- nvm
- cypress
- iTerm2

## Optional

Following are optional scripts which can be run based on your need. I recommended reading through these scripts to understand what they do and what you need before running them.

### Mac defaults

You can also customise some Mac settings using the `defaults` command. I've set a few which are common for most of us. You can refered to this [repo1](https://github.com/kevinSuttle/macOS-Defaults/blob/master/.macos) & [repo2](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) more a ton of other stuff that can be achieved.

I've changed the following behaviours in OSX

- Change tap to press - By default I need to press to press 🙄
- Show only active items in dock - I don't like clutter.
- Increase keyrepeat and delay keyrepeat delay - I assume most devs like it this way.
- Add bottom right corner as hot corner for locking screen

The osx.sh file contains the commands for above. If you used the install script then go to `/opt/frog-mac-starter` to find the osx.sh file and run it there. 

### Git defaults

The git.sh script can help you to set some standard git defaults like you full name and email into the config. It also configures some aliases and creates a SSH key which can be used to authenticate yourselve.