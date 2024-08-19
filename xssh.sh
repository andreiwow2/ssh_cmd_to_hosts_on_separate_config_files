#!/bin/bash

xssh() {
    local script_dir
    local category=$1
    local host_name=$2
    local ssh_command=$3

    # Get the directory of the current script
    script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

    if [ -z "$category" ] || [ -z "$host_name" ]; then
        echo "Usage: xssh <category> <host_name> [command]"
        return 1
    fi

    local config_file="$script_dir/$category.config"

    if [ ! -f "$config_file" ]; then
        echo "Error: Configuration file $config_file does not exist."
        return 1
    fi

    if [ -n "$ssh_command" ]; then
        ssh -F "$config_file" "$host_name" "$ssh_command"
    else
        ssh -F "$config_file" "$host_name"
    fi
}

# If called directly, execute the function
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    xssh "$@"
fi
