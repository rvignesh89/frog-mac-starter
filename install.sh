#! /bin/bash

sudo -i

directory="/opt/frog-mac-starter"

mkdir -p $directory

cd $directory && curl -L -O https://github.com/rvignesh89/frog-mac-starter/releases/download/v0.1.0/frog-mac-starter.zip

unzip "${directory}/frog-mac-starter.zip"

sh "${directory}/bootstrap.sh"