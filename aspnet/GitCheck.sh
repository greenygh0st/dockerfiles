#!/bin/sh

# Simple Bash Script to check and see if a given repo is up to date
# then if it is not up-to-date we update it. Best used with Cron.
#

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 LOCALREPO" >&2
  exit 1
fi
cd $1
# git checkout dev #checkout a different branch - release v dev?
git diff
if [$? -ne 0]; then
  git pull
  #custom actions here...like using DockerBuild.sh. ;)
fi
