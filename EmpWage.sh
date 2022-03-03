#!/bin/bash -x

isPartTime=1
isFullTime=2
MAX_HRS_IN_MONTH=100
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

#variables
totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$(($RANDOM%3))
	case $empCheck in
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
totalEmpHr=$(($totalEmpHr + $empHr))
done

totalSalary=$(($totalEmpHr + $EMP_RATE_PER_HR))
