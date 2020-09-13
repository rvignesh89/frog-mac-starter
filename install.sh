#! /bin/bash

directory="/opt/frog-mac-starter"

sudo mkdir -p $directory

cd $directory && sudo curl -fsSLO https://github.com/rvignesh89/frog-mac-starter/releases/download/v0.3.0/frog-mac-starter.zip

sudo unzip "${directory}/frog-mac-starter.zip"

sh "${directory}/bootstrap.sh"