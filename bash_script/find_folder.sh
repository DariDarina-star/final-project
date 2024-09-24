#!/bin/bash


echo -n  "enter file "
read files
#file=fstab
if ls /etc/$files; then
  echo "$papka found"
else
  echo "$papka not found"
fi

