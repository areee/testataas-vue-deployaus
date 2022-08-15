#!/usr/bin/env sh

# HOX: Give an executable permission to this file before running it for the first time: chmod +x deploy.sh
# Then, every time when deploying run this file from the root of the project: ./deploy.sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

# these are needed only one time
#git init
#git checkout -b main

# but this is needed every time
git add .

# basic commit message
# git commit -m 'deploy'

# commit message with the current date
msg="deploying Vue app at $(date)"

if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:areee/testataas-vue-deployaus.git main:gh-pages

cd -