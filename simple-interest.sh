#!/bin/bash

# Simple Interest Calculator Script
# Author: Avantika Sawant
# Description: Calculates simple interest based on Principal, Rate of Interest, and Time in years.

# Formula: Simple Interest = (Principal * Rate * Time) / 100

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Error: Invalid number of arguments."
    echo "Usage: $0 <principal> <rate> <time>"
    echo "Example: $0 1000 5 2"
    exit 1
fi

# Assign command line arguments to variables
principal=$1
rate=$2
time=$3

# Calculate simple interest using 'bc' for floating point operations
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Calculate the total amount (Principal + Interest)
total_amount=$(echo "scale=2; $principal + $interest" | bc)

# Display the calculated results
echo "======================================"
echo "      Simple Interest Calculator      "
echo "======================================"
echo "Principal Amount : $$principal"
echo "Annual Interest  : $rate%"
echo "Time Period      : $time year(s)"
echo "--------------------------------------"
echo "Simple Interest  : $$interest"
echo "Total Amount     : $$total_amount"
echo "======================================"
