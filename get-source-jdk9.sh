#!/bin/bash

set -eux

SHA=$1

hg clone http://hg.openjdk.java.net/jdk-updates/jdk9u
cd jdk9u
hg checkout $SHA
chmod u+x get_source.sh
./get_source.sh
chmod u+x configure
export DISABLE_HOTSPOT_OS_VERSION_CHECK=ok

