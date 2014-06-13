#!/bin/awk -f
BEGIN {
  if (ARGC-1 != 2)
    printf "You need to enter two numbers: \"%s\" num1 num2\n", ARGV[0]
  else
    printf "The sum of %d and %d is: %d\n", ARGV[1], ARGV[2], ARGV[1] + ARGV[2]
}
