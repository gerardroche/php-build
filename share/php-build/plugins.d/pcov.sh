#!/usr/bin/env bash
#
# This shell scriplet is meant to be included by other shell scripts
# to set up some variables and a few helper shell functions.

PLUGIN_DEFAULT_VERSION_PCOV="1.0.11"

function install_pcov_master {
    install_extension_source "pcov" "$1"
}

function install_pcov {
    if test -n "$1"; then
        version="$1"
    else
        version="$PLUGIN_DEFAULT_VERSION_PCOV"
    fi

    install_extension "pcov" "$version"
}

function pcov_after_install {
    local source_dir=$1
    local ini_file=$2
    local extension_type=$3
    local extension_dir=$4

    echo "$extension_type=\"$extension_dir/pcov.so\"" >> $ini_file
}
