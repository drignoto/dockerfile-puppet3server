#!/bin/bash

/bin/rm -rf /var/lib/puppet/ssl

/usr/bin/puppet cert list -a

/usr/bin/puppet master --no-daemonize -o

/bin/sed -i "s/testpuppet.example/$FQDN/g" /etc/apache2/sites-available/puppetmaster.conf

exec /usr/sbin/apache2ctl "$@"
