#!/bin/sh
# while construction
count=10
while [ $count -gt 0 ]; do
   echo "\$count is $count"
   count=$(( $count - 1 ))
done