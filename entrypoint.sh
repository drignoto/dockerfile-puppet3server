#!/bin/bash

sed -i "s/testpuppet.example/$FQDN/g" /etc/apache2/sites-available/puppetmaster.conf
