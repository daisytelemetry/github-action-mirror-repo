#!/usr/bin/env bash
# This is a heavily simplified version of https://github.com/yesolutions/mirror-action
# When you specify an input in a workflow file or use a default input value, GitHub creates an environment variable for the input with the name INPUT_<VARIABLE_NAME>

set -e

if [[ "${INPUT_DEBUG}" -eq "true" ]]; then
    set -x
fi

git config --global --add safe.directory /github/workspace

git config --global credential.username "${INPUT_GIT_USERNAME}"

git config --global core.askPass /git-password.sh
git config --global credential.helper cache

git remote add ${INPUT_GIT_REMOTE_NAME} ${INPUT_GIT_REMOTE_URL}

if [ ${INPUT_GIT_REF_SPEC} ];
then
  git push ${INPUT_GIT_PUSH_ARGS} ${INPUT_GIT_REMOTE_NAME} "${INPUT_GIT_REF_SPEC}"
else
  git push ${INPUT_GIT_PUSH_ARGS} ${INPUT_GIT_REMOTE_NAME}
fi
