#!/bin/bash -x

read -p "Enter the value of a : " a
read -p "Enter the value of b : " b
read -p "Enter the value of c : " c
x=$(( $a + $b * $c ))
y=$(( $a * $b + $c ))
z=$((`expr $c + $a / $b | bc` ))
echo "$a+$b*$c = $x"
echo "$a*$b+$c = $y"
echo "$c+$a/$b = $z"
