#!/bin/sh
rm -rf /var/www/doxin.net/site/*
doxite -sd src -dd /var/www/doxin.net/site -se md -o markdown
echo "Done."
