#!/usr/bin/ruby

# create method (subroutine)
def show_date
   time = Time.new
   puts "Today is #{time.strftime("%b %d, %Y")}."
end

# call the method (subroutine)
show_date
