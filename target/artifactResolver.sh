#!/bin/bash -xe

AR_PATH=`dirname $0`
AR_GAV=$1

echo """--repo.remote
 "http://sodio.stratio.com/repository/public"
--repo.local
 "$PWD"
""" > script.args

java -jar $AR_PATH/artifactResolver.jar @"$PWD"/script.args $AR_GAV