#!/bin/bash -x

empRatePerHr=20
isFullTime=1
isPartTime=2
empCheck=$((RANDOM%3))
# case statemnent
# if [ $empCheck -eq $isFullTime ]
# then
#     empHrs=8
case $empCheck in
	1) empHrs=8
		;;
	2) empHrs=4
		;;
	*) empHrs=0
		;;
esac

salary=$(($empRatePerHr * $empHrs))
echo $salary
