#!/bin/bash -x

read -p "Enter the value of a : " a
read -p "Enter the value of b : " b
read -p "Enter the value of c : " c
x=$(( $a + $b * $c ))
echo $x
