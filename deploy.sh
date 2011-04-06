#!/bin/sh
HOMEDIR=`pwd`

echo "Deploying site ..."
cd site && sh deploy.sh
cd $HOMEDIR

echo "Deploying blog ..."
cd blog && sh deploy.sh
cd $HOMEDIR

echo "Deploying tech ..."
cd tech && sh deploy.sh
cd $HOMEDIR
