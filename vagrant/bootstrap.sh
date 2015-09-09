#!/usr/bin/env bash

mkdir -p /etc/puppet/modules

if [ -d "/etc/puppet/modules/apache" ]; then
    puppet module upgrade puppetlabs-apache
else
    puppet module install puppetlabs-apache
fi

if [ -d "/etc/puppet/modules/mysql" ]; then
    puppet module upgrade puppetlabs-mysql
else
    puppet module install puppetlabs-mysql
fi

if [ -d "/etc/puppet/modules/php" ]; then
    puppet module upgrade nodes/php
else
    puppet module install nodes/php
fi
