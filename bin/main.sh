#!/bin/bash
source "./bin/helpers.sh"
source "./bin/validators.sh"

JAVA_VERSION=$1
SBT_VERSION=$2

is_java_version_valid $JAVA_VERSION || exit 1

ARCH=$(get_arch $JAVA_VERSION)
OS=$(get_os $JAVA_VERSION)

is_arch_valid $JAVA_VERSION $ARCH $OS || exit 1

JAVA_URL=$(build_java_url $JAVA_VERSION $OS $ARCH)
download_and_unpack $JAVA_URL "jdk" 

SBT_URL=$(build_sbt_url $SBT_VERSION)
download_and_unpack $SBT_URL "sbt"

clean_it_up



