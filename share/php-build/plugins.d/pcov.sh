#!/usr/bin/env bash
#
# This shell scriplet is meant to be included by other shell scripts
# to set up some variables and a few helper shell functions.

# PHP.next Development releases depend on current PCOV development snapshots
function install_pcov_master {
    install_extension_source "pcov" "$1"
}

# On the contrary, for stable PHP versions we need a stable PCOV version
function install_pcov {
    install_extension "pcov" "$1"
}

function pcov_after_install {
    local source_dir=$1
    local ini_file=$2
    local extension_type=$3
    local extension_dir=$4

    echo -n "$conf_line_prefix" > $ini_file
    echo "$extension_type=\"$extension_dir/pcov.so\"" >> $ini_file
    echo -n "$conf_line_prefix" >> $ini_file
}
