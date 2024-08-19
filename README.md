# xssh.sh
This is a bash function that lets user execute ssh commands to host configurations in separate config files, just by specifying the name of the config file and name of the host.

Save the script in a file somewhere and make it accessible:
`chmod +x path/to/file/xssh.sh`



Add the script file to your `.bash_profile` or `.zshrc` according to your shell.
Example, replace accordingly
`echo "source /path/to/file/xssh.sh" >> ~/.zshrc`

`source ~/.zshrc`



Execute
`xssh <cfgfile_name> <host_name> [command]`


If no command is specified, it will open a SSH session.
