#!/bin/bash
echo "hello seba - lets start that stuff with a bash-script. First source env vars - so no ugly copy of that is needed"
set -x
source env.example
#chown -R $USER:$USER ./app only necessary in WSL2 i guess 
docker-compose up -d 
set +x 
echo "done! Execute composer"
composer install