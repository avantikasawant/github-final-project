#!/bin/bash

# Simple Interest Calculator Script
# Author: Avantika Sawant

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    exit 1
fi

principal=$1
rate=$2
time=$3

interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "Principal Amount: $principal"
echo "Annual Interest Rate: $rate%"
echo "Time (in years): $time"
echo "--------------------------"
echo "Simple Interest: $interest"
