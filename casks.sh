#!/bin/bash

YELLOW_COLOR=`tput setaf 3`
COLOR_RESET=`tput sgr0`

echo "==> 🍻 Installing casks..."
echo "${YELLOW_COLOR}NOTE: Some casks might require you to enter your password.${COLOR_RESET}"

declare -a arr=("google-chrome" "iterm2" "visual-studio-code" "slack" "microsoft-teams" "docker" "intellij-idea" "android-studio" "webstorm" "java" "postman" "mattermost")
casks=$(brew cask list)

for cask in "${arr[@]}"
do
  if echo ${casks} | grep "$cask" &> /dev/null
  then
    echo "$cask already installed... ✅"
  else
    printf "Installing $cask..."
    brew cask install "$cask" &> /dev/null
    echo ✅
  fi
done
