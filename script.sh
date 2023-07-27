#!/bin/bash
git clone https://github.com/Omar-Ahmed-Dt/json-server-app.git
cd json-server-app
docker-compose up --build 
# wait 60s and check every 1sec 
timeout 60s bash -c 'while [[ "$(docker-compose ps -q | wc -l)" -ne 3 ]]; do sleep 1; done'
# print message 
if [[ "$(docker-compose ps -q | wc -l)" -eq 3 ]]; then
  echo "Deployment successful! Access the app at http://localhost"
else
  echo "Deployment failed! Check the logs for more information."
fi
