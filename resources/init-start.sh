#!/bin/sh


# [1. resources File Copy]----------------------------------------------------------------------#
echo "1. resources File Copy..."
cp -r /sa-gov-resource/e2e-producer.properties /sa-gov
cp -r /sa-gov-resource/e2e-collector.properties /sa-gov
cp -r /sa-gov-resource/truststore.jks /sa-gov
cp -r /sa-gov-resource/start.sh /sa-gov

