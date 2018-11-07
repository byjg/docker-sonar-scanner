#!/usr/bin/env sh

export SQS_URL="https://binaries.sonarsource.com/Distribution/sonar-scanner-cli"

if [ -z "$1" ]
then
    export SQS_FILE=`curl $SQS_URL/ | grep sonar-scanner-cli | grep -v .asc | grep -v windows | grep -v linux | grep -v macosx | cut -d\" -f2 | tail -n 1`
    export SQS_DIRECTORY=`echo $SQS_FILE | rev | cut -d. -f2- | rev | sed -e 's/-cli//g'`
    export SQS_VERSION=`echo $SQS_DIRECTORY | cut -d- -f 3`
else
    export SQS_FILE="sonar-scanner-cli-$1.zip"
    export SQS_DIRECTORY="sonar-scanner-$1"
    export SQS_VERSION="$1"
fi
export SQS_SIMPLE_VERSION=`echo $SQS_VERSION | cut -d. -f1-3`

echo "Selected Version: $SQS_VERSION"
echo "Selected File: $SQS_FILE"
echo "Selected Directory: $SQS_DIRECTORY"
echo "Simple version: $SQS_SIMPLE_VERSION"

