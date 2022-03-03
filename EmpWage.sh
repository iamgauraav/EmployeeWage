#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$(($RANDOM%3))

if [ $isFullTime -eq $randomCheck ]
then
	empHr=14
elif [ $isPartTime -eq $randomCheck ]
then
	empHr=8
else
	empHr=0
fi
salary=$(($empHr * $empRatePerHr))
