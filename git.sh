#!/bin/bash

echo "==> 🐞 Configuring git"

printf "Enter your email: "
read email

printf "Enter your full name: "
read full_name

git config --global user.email "${email}"
git config --global user.name "${full_name}"

git config --global pull.rebase true
git config --global core.autocrlf input
git config --global alias.br branch
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.unstage "reset HEAD --"
git config --global alias.slog "log --pretty=oneline --abbrev-commit"
git config --global alias.graph "log --all --oneline --graph --decorate"

echo "Done configuring git ✅"

if find ~/.ssh/id_rsa &> /dev/null
then
    echo "SSH key file already exists... ✅"
else
    ssh-keygen -t rsa -b 4096 -C "${email}" -q -N "" -f ~/.ssh/id_rsa
    echo "Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config
    ssh-add -K ~/.ssh/id_rsa
    echo "Done generating new SSH key file... ✅"
fi