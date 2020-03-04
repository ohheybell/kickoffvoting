#!/bin/bash -e
commit_message="dbsetup troubleshooting"
git add . -A
git commit -m "$commit_message"
git push
#touch build
