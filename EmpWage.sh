#!/bin/bash -x

#CONTANTS
isPartTime=1
isFullTime=2
MAX_HRS_IN_MONTH=100
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

#VARIABLES
totalEmpHr=0
totalWorkingDays=0

function getWorkHr() {
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
echo $empHr
}

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
	empHr="$( getWorkHr $((RANDOM%3)) )"
	totalEmpHr=$(($totalEmpHr + $empHr))
done

totalSalary=$(($totalEmpHr + $EMP_RATE_PER_HR))
