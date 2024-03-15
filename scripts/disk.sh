echo $(df -h | awk '/^\/dev\/sda4/ { print $5 " ("$4" left)" }' | sed s/i//g)
