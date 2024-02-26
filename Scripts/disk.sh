echo $(df -h | awk '/^\/dev\/sda4/ { print $5 " used ("$4" left)" }' | sed s/i//g)
