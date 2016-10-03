#!/bin/bash

/bin/sed -i "s/testpuppet.example/$FQDN/g" /etc/apache2/sites-available/puppetmaster.conf

/usr/sbin/apache2ctl -D FOREGROUND
