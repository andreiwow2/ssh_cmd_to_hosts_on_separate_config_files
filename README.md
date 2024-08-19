# xssh.sh
This is a bash function that lets user execute ssh commands to host configurations in separate config files, just by specifying the name of the config file and name of the host.

Save the script in a file somewhere and make it accessible:
`chmod +x path/to/file/xssh.sh`



To execute the command you will have to add an alias to your profile, for example on .zshrc:
```
alias xssh=/Path/to/the/file/.ssh/categorized_configs/xssh.sh
```



Execute
`xssh <cfgfile_name> <host_name> [command]`


If no command is specified, it will open a SSH session.



The script is coded to look for the config files in the same directory as the .sh itself.
And it checks for the file name with `.config` appended to it, you can remote that from the `local config_file="$script_dir/$category.config"` making it `local config_file="$script_dir/$category"` if you don't want to use a suffix to your file names.
