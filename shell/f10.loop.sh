#!/bin/sh
# conditional loop
until [ "$answer" = "quit" ]; do
   printf "Enter your name (quit to exit): "
   read answer
   if [ $answer != "quit" ] ; then
    echo Hello $answer!
   fi
done