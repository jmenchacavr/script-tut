#!/usr/bin/python
import time
# create method (subroutine)
def show_date():
   print "Today is %s." % time.strftime("%B %d, %Y")

# call the method (subroutine)
show_date()
