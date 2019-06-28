#!/bin/bash

cat ../res11beta* | grep SUM | awk '{print $3 " " $5}' > beta2311.dat
cat ../res10beta* | grep SUM | awk '{print $3 " " $5}' > beta2310.dat
cat ../res01beta* | grep SUM | awk '{print $3 " " $5}' > beta2301.dat
cat ../res00beta* | grep SUM | awk '{print $3 " " $5}' > beta2300.dat

cat ../res11theta* | grep SUM | awk '{print $4 " " $5}' > theta2311.dat
cat ../res10theta* | grep SUM | awk '{print $4 " " $5}' > theta2310.dat
cat ../res01theta* | grep SUM | awk '{print $4 " " $5}' > theta2301.dat
