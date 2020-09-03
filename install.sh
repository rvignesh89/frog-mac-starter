#! /bin/bash

directory="/opt/frog-mac-starter"

mkdir -p $directory

cd $directory && curl -L -O https://github.com/rvignesh89/mac-starter/releases/download/0.0.1/frog-mac-starter.zip 

unzip "${directory}/frog-mac-starter.zip"

sh "${directory}/bootstrap.sh"