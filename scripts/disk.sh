echo $(df -h | awk '/^\/dev\/sda3/ { print $5 " ("$4" left)" }' | sed s/i//g)
