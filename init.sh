#!/bin/bash

VAR1=$1
VAR2=$2
VAR3=$3
VAR4=$4
VAR5=$5
VAR6=$6

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
log "INFO" "VAR1 -> $VAR1"
log "INFO" "VAR2 -> $VAR2"
log "INFO" "VAR3 -> $VAR3"
log "INFO" "VAR4 -> $VAR4"
log "INFO" "VAR5 -> $VAR5"
log "INFO" "VAR6 -> $VAR6"