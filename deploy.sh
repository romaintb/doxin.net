#!/bin/sh
HOMEDIR=`pwd`

echo "Deploying home ..."
cd home && cp index.html default.css favicon.ico /home/romain/www/doxin.net
cd $HOMEDIR
echo "Done."

echo "Deploying site ..."
cd site && sh deploy.sh
cd $HOMEDIR

echo "Deploying blog ..."
cd blog && sh deploy.sh
cd $HOMEDIR

echo "Deploying tech ..."
cd tech && sh deploy.sh
cd $HOMEDIR
