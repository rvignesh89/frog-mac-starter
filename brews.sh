#!/bin/bash

echo "==> 🍺 Installing brews..."

declare -a arr=("git" "mas" "docker" "gradle" "jq" "openjdk@11" "kubernetes-cli" "terraform" "kind" "pyenv" "pyenv-virtualenv")
brews=$(brew list)

for br in "${arr[@]}"
do
  if echo ${brews} | grep "${br}" &> /dev/null
  then
    echo "${br} already installed... ✅"
  else
    printf "Installing ${br}..."
    brew install "${br}" &> /dev/null
    echo ✅
  fi
done
