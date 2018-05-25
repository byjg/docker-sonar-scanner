#!/usr/bin/env sh

cd /opt

echo "Selected Version: $SQS_VERSION"

wget $SQS_URL/$SQS_FILE -O sonar-scanner-cli.zip
unzip sonar-scanner-cli.zip
ln -s /opt/$SQS_DIRECTORY/bin/sonar-scanner /usr/bin/sonar-scanner

