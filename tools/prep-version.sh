#!/bin/bash

# Id: git-versioning/0.0.15-dev+20150422-0230 tools/prep-version.sh


# Script to reset flags for (auto) increments

# just set pre-release tag to the branch
#BRANCH=$(git status|grep On.branch|awk '{print $3}')
#./bin/cli-version.sh pre-release $BRANCH

# Just set to dev
./bin/cli-version.sh pre-release dev

