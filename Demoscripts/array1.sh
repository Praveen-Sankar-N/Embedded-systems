#!/bin/bash


arr=(1 2 3 Praveen Sankar 14.29)

echo "the 1st element is ${arr[0]}"
echo "the 2nd element is ${arr[1]}"
echo "the length of array is ${#arr[@]}"
echo "the 4th element is ${arr[3]}"
echo "the lenghth of 4th element is ${#arr[3]}"

echo "the last element using offset is ${arr[-1]}"
echo "the last element using normal method is ${arr[${#arr[@]}-1]}"
echo "All elements in array are ${arr[*]}"


