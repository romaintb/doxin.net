#!/bin/sh
rm -rf /home/romain/www/doxin.net/site/*
doxite -sd src -dd /home/romain/www/doxin.net/site -se md -o markdown
echo "Done."
