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
storage[firstResult]=$w
storage[secondResult]=$x
storage[thirdResult]=$y
storage[fourthResult]=$z
echo "Dictionary: ${storage[@]}"

i=0
arr[((i++))]=${storage[firstResult]}
arr[((i++))]=${storage[secondResult]}
arr[((i++))]=${storage[thirdResult]}
arr[((i++))]=${storage[fourthResult]}

echo "Array: ${arr[@]}"
