#!/bin/bash
source vars.sh

echo "Building package..."

fpm -s python -t deb \
--url "https://bitbucket.org/mib2011/p1mqtt" \
--description "Very simple python module implementing Zabbix Sender protocol." \
--license "GPL" \
--maintainer "$PKG_MAINTAINER" \
--vendor "$PKG_VENDOR" \
protobix

mv *.deb ../../packages
