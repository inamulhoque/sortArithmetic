#!/bin/bash -x

read -p "Enter the value of a : " a
read -p "Enter the value of b : " b
read -p "Enter the value of c : " c

w=$(( $a + $b * $c ))
x=$(( $a * $b + $c ))
y=$((`expr $c + $a / $b | bc` ))
z=$(( $a % $b + $c ))

echo "$a+$b*$c = $w"
echo "$a*$b+$c = $x"
echo "$c+$a/$b = $y"
echo "$a%$b+$c = $z"

declare -A storage
storage[firstresult]=$w
storage[secondResult]=$x
storage[trhirdResult]=$y
storage[fourthReslut]=$z
echo "${storage[@]}"
