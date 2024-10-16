#!/bin/bash

VAR1=$1
VAR2=$2
VAR3=$3

exec >/tmp/userdata.log 2>&1

timestamp() {
    date +"%Y/%m/%d %T"
}
log() {
    local type="$1"
    local msg="$2"
    local script_name=${0##*/}
    echo "$(timestamp) [$script_name] [$type] $msg"
}


echo "Wecome from init script" > /tmp/log.txt

log "Hello from init"
log "Variables are $VAR1 , $VAR2, $VAR3"