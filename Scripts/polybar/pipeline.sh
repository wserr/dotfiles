#!/bin/bash

result=$(curl --request GET \
  --url "YOUR_URL_HERE" \
  --header "AUTH_HEADER" \
  --cookie VstsSession="COOKIE") 
echo $result

