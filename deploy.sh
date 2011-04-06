#!/bin/sh
cd site && sh deploy.sh
cd -
cd blog && sh deploy.sh
cd -
cd tech && sh deploy.sh
cd -
