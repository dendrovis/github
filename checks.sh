#!/bin/sh

# provide argument an identifier name
GITHUB_REF=$1 

# Only valid feature branch are allow to run CI
if [[ "${GITHUB_REF}" =~ ^refs\/heads\/feature\/[^-\/]+$ ]]; then
echo "Branch name matches the pattern 'feature/' without additional subdirectories."
else
echo "Branch name does not match the pattern 'feature/' or has additional subdirectories."
exit 1  # exit with a non-zero status to fail the workflow
fi