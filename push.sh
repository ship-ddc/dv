#!/bin/bash -e
if [ "$IS_PULL_REQUEST" != true ]; then
  sudo docker push $IMAGE_NAME:$BRANCH.$BUILD_NUMBER
  sudo docker push ship-dtr.in/sdemo/dv:$BRANCH.$BUILD_NUMBER
else
  echo "skipping because it's a PR"
fi
