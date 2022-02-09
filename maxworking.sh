#!/bin/bash

empRatePerHr=20
isFullTime=1
isPartTime=2
totalWorkingDays=0
totalWorkingHrs=0
maxWorkingDays=20
totalSalary=0
maxWorkingHrs=100
while [[ $totalWorkingHrs -lt $maxWorkingHrs && $totalWorkingHrs -lt $maxWorkingHrs ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	case $empCheck in
	$isFullTime) empHrs=8
					;;
	$isPartTime) empHrs=4
					;;
				* ) empHrs=0
					;;
	esac
	totalWorkingHrs=$(($totalWorkingHrs+$empHrs))
done
totalSalary=$(($totalWorkingHrs * $empRatePerHr))
echo $totalSalary
	
