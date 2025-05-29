echo $(df -h | awk -v env_var="$DISK_NAME" '$0 ~ env_var { print $5 " ("$4" left)" }' | sed 's/i//g')
