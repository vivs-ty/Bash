#!/bin/bash
# Library: Standardized logging framework

log_info() {
    echo -e "[\e[32mINFO\e[0m] $(date +'%Y-%m-%dT%H:%M:%S') - $1"
}

log_warn() {
    echo -e "[\e[33mWARN\e[0m] $(date +'%Y-%m-%dT%H:%M:%S') - $1"
}

log_error() {
    echo -e "[\e[31mERROR\e[0m] $(date +'%Y-%m-%dT%H:%M:%S') - $1" >&2
}

fatal_error() {
    log_error "$1"
    exit 1
}
