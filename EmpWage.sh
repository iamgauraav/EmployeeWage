#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$(($RANDOM%3))

case $randomCheck in
	$isFullTime)
		empHr=14
		;;
	$isPartTime)
		empHr=8
		;;
	*)
		empHr=0
		;;
esac
salary=$(($empHr * $empRatePerHr))
