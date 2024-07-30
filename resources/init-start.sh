#!/bin/sh


# [1. resources File Copy]----------------------------------------------------------------------#
echo "1. resources File Copy..."
cp -r /gov/resources/e2e-producer.properties /sa-gov
cp -r /gov/resources/e2e-collector.properties /sa-gov
cp -r /gov/resources/truststore.jks /sa-gov
cp -r /gov/resources/start.sh /sa-gov
