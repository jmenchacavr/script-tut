
Set-Variable pi -option Constant -value 3.14159265359 # set approximation of π
$radius=3                                             # set radius
$area=$pi * [Math]::Pow($radius, 2)                   # calculate area
"The area of a circle is $area"                       # output result