#!/bin/bash

TRAVIS_TOKEN=$1
TRAVIS_BODY='{
"request": {
  "branch":"master"
}}'

curl -s -X POST -H "Content-Type: application/json" -H "Accept: application/json" -H "Travis-API-Version: 3" -H "Authorization: token $TRAVIS_TOKEN" -d "$TRAVIS_BODY" https://api.travis-ci.org/repo/3d-pro%2Fnginx/requests
curl -s -X POST -H "Content-Type: application/json" -H "Accept: application/json" -H "Travis-API-Version: 3" -H "Authorization: token $TRAVIS_TOKEN" -d "$TRAVIS_BODY" https://api.travis-ci.org/repo/3d-pro%2Fapache2/requests
curl -s -X POST -H "Content-Type: application/json" -H "Accept: application/json" -H "Travis-API-Version: 3" -H "Authorization: token $TRAVIS_TOKEN" -d "$TRAVIS_BODY" https://api.travis-ci.org/repo/3d-pro%2Fnode/requests
curl -s -X POST -H "Content-Type: application/json" -H "Accept: application/json" -H "Travis-API-Version: 3" -H "Authorization: token $TRAVIS_TOKEN" -d "$TRAVIS_BODY" https://api.travis-ci.org/repo/3d-pro%2Fwebpy/requests
curl -s -X POST -H "Content-Type: application/json" -H "Accept: application/json" -H "Travis-API-Version: 3" -H "Authorization: token $TRAVIS_TOKEN" -d "$TRAVIS_BODY" https://api.travis-ci.org/repo/3d-pro%2Fdockvpn/requests
