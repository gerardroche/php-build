#!/usr/bin/env bash
#
# This shell scriplet is meant to be included by other shell scripts
# to set up some variables and a few helper shell functions.

PLUGIN_DEFAULT_VERSION_AST="1.1.0"

function install_ast_master {
    install_extension_source "ast" "$1"
}

function install_ast {
    if test -n "$1"; then
        version="$1"
    else
        version="$PLUGIN_DEFAULT_VERSION_AST"
    fi

    install_extension "ast" "$version"
}

function ast_after_install {
    local source_dir=$1
    local ini_file=$2
    local extension_type=$3
    local extension_dir=$4

    echo "$extension_type=\"$extension_dir/ast.so\"" >> $ini_file
}
