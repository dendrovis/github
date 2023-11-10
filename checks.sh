#!/bin/sh

# provide argument an identifier name
BRANCH_NAME=$1 

# Only valid feature branch are allow to run CI
if [[ "${BRANCH_NAME}" =~ ^feature\/[^-\/]+$ ]]; then
echo "Branch name matches the pattern 'feature/' without additional subdirectories."
else
echo "Branch name does not match the pattern 'feature/' or has additional subdirectories."
# exit with a non-zero status to fail the workflow
exit 1  
fi