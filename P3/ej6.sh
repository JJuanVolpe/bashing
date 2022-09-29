#!bin/bash

<< 'Comment'
6. El comando expr permite la evaluación de expresiones. Su sintaxis es: expr arg1 op arg2,
donde arg1 y arg2 representan argumentos y op la operación de la expresión. Investigar
que tipo de operaciones se pueden utilizar.
Comment

x=10

y=20

# matching numbers with '='
res=`expr $x = $y`
echo $res

# displays 1 when arg1 is less than arg2
res=`expr $x \< $y`
echo $res

# display 1 when arg1 is not equal to arg2
res=`expr $x \!= $y`
echo $res

 OR operation
$expr length  "geekss"  "<"  5  "|"  19  -  6  ">"  10

#Output:1

# AND operation
$expr length  "geekss"  "<"  5  "&"  19  -  6  ">"  10

#Output:0

x=geeks

len=`expr length $x`

echo $len

#Output:5


x=geeks

sub=`expr substr $x 2 3` 
#extract 3 characters starting from index 2

#Output eek

Example: Matching number of characters in two strings

$ expr geeks : geek

#Output:4