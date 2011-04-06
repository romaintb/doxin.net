#!/bin/sh
echo 'Generating tech blog ...'
blaze-make --destdir /var/www/doxin.net/tech

echo 'Fixing perms ...'
#sudo chown -R www-data:www-data /var/www/doxin.net/tech
chmod -R a+r /var/www/doxin.net/tech
find /var/www/doxin.net/tech -type d | xargs chmod a+x

echo 'OK.'
