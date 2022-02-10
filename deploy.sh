#!/bin/sh
# Commit mesage

if [ -z "$1" ]; then
 echo "Submit a commit message you uncultured swine!"
 exit
fi
echo " === [*] build"
bundle exec jekyll b

echo " === [*] push"
git add .
git commit -m "MASTER+DEPLOY - $1"
#git tag -a "v$(date +'%s')" -m "push to master and deploy"
git push origin master

