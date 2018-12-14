#!/usr/bin/env bash

ENV=$1

if [ -z "$ENV" ]; then
        ENV=local
fi

echo .
echo WARNING! About to shutdown and retrieve NiFi config for environment \"$ENV\"
echo .
echo press ctrl+c to cancel or enter to continue
read input

/opt/nifi-1.8.0/bin/nifi.sh stop

cp /opt/nifi-1.8.0/conf/custom.properties settings/conf/$ENV.custom.properties
cp /opt/nifi-1.8.0/conf/system.properties settings/conf/system.properties

# --keep is not an option on CentOS...
rm settings/conf/flow.xml
cp /opt/nifi-1.8.0/conf/flow.xml.gz settings/conf/flow.xml.gz.a
cp /opt/nifi-1.8.0/conf/flow.xml.gz settings/conf/flow.xml.gz
gunzip settings/conf/flow.xml.gz
mv settings/conf/flow.xml.gz.a settings/conf/flow.xml.gz

echo now start nifi manually:
echo /opt/nifi-1.8.0/bin/nifi.sh start
echo .
