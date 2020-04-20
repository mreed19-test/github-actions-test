#!/usr/bin/env bash

curl -H "Accept: application/vnd.github.everest-preview+json" \
  -H "Authorization: token $GITHUB_ACTIONS_TEST_TOKEN" \
  --request POST \
  --data '{"event_type": "manual_trigger"}' \
  https://api.github.com/repos/mreed19/github-actions-test/dispatches
