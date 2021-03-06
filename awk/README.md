# Scripting Tutorial: AWK

© Joaquin Menchaca, 2014

## Overview

The AWK tool was introducted in Version 7 Unix and named afer the authors: Aho, Weinberger, and Kernighan.  AWK provided computational features to the Unix pipeline, and at the time, AWK was the only other scripting language available besides Bourne Shell.  

AWK was exremely popular in the 1970s and 1980s.  The available shell at the time (Bourne shell) was extremely limited, and AWK provided numerous capabilities absent from Bourne Shell.  This included rich text processing capabilities, math functions, and the capability to create arrays and associative arrays (hashes).

AWK was updated in the late 1980s with the release of nawk (New AWK) and gawk (GNU AWK).  In the 1990s, the popularity of Perl caused AWK to be used less for text-processing chores.

## Getting AWK

Today, AWK is apart of the GNU Core-Utilities [http://www.gnu.org/software/coreutils/] found on many Linux systems.  For UNIX systems or systems claiming to have POSIX compatibility, would likely have awk as apart of that tool set for compliance toward IEEE Std 1003.1, 2013 Edition [http://pubs.opengroup.org/onlinepubs/9699919799/utilities/contents.html].

Thus, with any UNIX or Linux system, you can expect awk to be available.  For Windows, that is another matter.  You can get awk from a number of locations.  Here are a few:

- UWIN: Toolset from AT&T that contains tool chain typically found with SVR4 UNIX.
  - http://www2.research.att.com/sw/download/
- GitBash (msysgit): Tools built with Mingw, integrate with Windows and can be used along side Windows tools.  However, the version of awk included is a very old version of gawk.
- Cygwin: Enviroment on top of Windows that provides GNU tools.

## How It Works

AWK is quite different in that an AWK script works as a filter.  This means AWK scripts or oriented to receive text from the console, standard-input.  Thus AWK scripts are generally not interactive scripts, where you selectively read lines of input.  Thus most awk scripts will be run with input being sent directly into the script. Examples:

```
some_command | awkscript
awkscript < somefile.txt
```

AWK scripts have the ability to do pre-processing and post-processing before and after receiving input through the ```BEGIN``` and ```END``` blocks.  These tutorial scripts here will use the ```BEGIN``` blocks.  These tutorial scripts illustrate that AWK in and of itself is a powerful scripting language, and have the capabilities shared by other modern scripting languages.

## Issues

For systems that do not have ```/bin/awk```, such as Mac OS X, you can create a symbolic link to create a ```/bin/awk```.  AWK is such an essential and core tool for any UNIX-like system.  It is a part of the POSIX 
UNIX toolset and also apart of the GNU Core-Utils.  Therefore it should be placed in the ```/bin``` directory.  

On Mac OS X 10.8.5, you can do this:

```
sudo ln -s `which awk` /bin/awk
```

## Testing

* Windows 7, Gawk 3.0.4 (msysgit 1.9.2-preview20140411)
  * Issues:
    * ```length()``` only works on string, will not work on array
* Mac OS X 10.8.5, Awk 20070501
  * Issues:
    * awk not in ```/bin/awk```, but found in ```/usr/bin/awk```

## Topics with Details 

This covers notes regarding each section.

1. **Output**
2. **Variables**
3. **Arithmetic**
4. **Input**
5. **Branch**
   * select on number using ```if```
   * select on character using ```switch```
     * **NOTE** *This is not supported by POSIX awk or earlier verions of gawk.  This functionality is available in Gawk 3.1.5 and above*
   * select on character using ```if```
6. **Looping**
   * iterative (count) loop
   * conditional loop
   * collection loop
7. **Arrays**
   * populate array using index
   * popular array using list of items
     * enumerate array using collection loop
     * enumerate array using iterative loop
8. **Associative Arrays**
   * Create Associative Array using key value
   * Create Associative Array using supplied list
9. **Subroutines** 
   * utilize subroutine that prints the current date in "Month Day, Year" format
10. *Arguments*
    * demonstrate testing for two arguments
    * print list of all arguments with count
    * print list of all arguments in reverse with count
11. *Parameters*
   * demonstrate passing 1 parameter
     * utilize subroutine that prints celsius temperature when supplied fahrenheit temperature
   * demonstrate passing unlimited parameters
     * **Note** *AWK does not support variable parameters, so an array is passed instead.*
     * utilize subroutine prints sum of all numbers passed into it.
12. **Functions**
    * demonstrate returning integer (TBA)
      * returns summation of all numbers passed into function 
    * demonstrate returning string
      * returns capitalized string from lower case string 
