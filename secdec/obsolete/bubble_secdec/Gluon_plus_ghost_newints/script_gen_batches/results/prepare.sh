#!/bin/bash

cat ../res11beta* | grep SUM | awk '{print $3 " " $5}' > beta1311.dat
cat ../res10beta* | grep SUM | awk '{print $3 " " $5}' > beta1310.dat
cat ../res01beta* | grep SUM | awk '{print $3 " " $5}' > beta1301.dat
cat ../res00beta* | grep SUM | awk '{print $3 " " $5}' > beta1300.dat

cat ../res11theta* | grep SUM | awk '{print $4 " " $5}' > theta1311.dat
cat ../res10theta* | grep SUM | awk '{print $4 " " $5}' > theta1310.dat
cat ../res01theta* | grep SUM | awk '{print $4 " " $5}' > theta1301.dat
cat ../res00theta* | grep SUM | awk '{print $4 " " $5}' > theta1300.dat
