#!/usr/bin/env bash

echo "Select Workflow to trigger:"
echo "1) manual_trigger"
echo "2) docker_build"

read selection

if [[ $selection == '1' ]]; then
  event_type='manual_trigger'
elif [[ $selection == '2' ]]; then
  event_type='docker_build'
else
  echo "Invalid Input: $selection"
  echo "Input must be 1 or 2"
  exit 1
fi

echo "{\"event_type\": \"$event_type\"}"

curl -H "Accept: application/vnd.github.everest-preview+json" \
  -H "Authorization: token $GITHUB_ACTIONS_TEST_TOKEN" \
  --request POST \
  --data "{\"event_type\": \"$event_type\"}" \
  -w "%{http_code}\n" \
  https://api.github.com/repos/mreed19/github-actions-test/dispatches
