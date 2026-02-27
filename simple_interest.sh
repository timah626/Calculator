#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P × R × T) / 100
# Where P = Principal, R = Rate of Interest per annum, T = Time in years

echo "===== Simple Interest Calculator ====="
echo

# Get principal amount from user
echo -n "Enter Principal Amount (P): "
read principal

# Get rate of interest from user
echo -n "Enter Rate of Interest per annum (R) %: "
read rate

# Get time period from user
echo -n "Enter Time Period (T) in years: "
read time

# Validate inputs
if ! [[ "$principal" =~ ^[0-9]+\.?[0-9]*$ ]] || ! [[ "$rate" =~ ^[0-9]+\.?[0-9]*$ ]] || ! [[ "$time" =~ ^[0-9]+\.?[0-9]*$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo
echo "===== Results ====="
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
echo "Total Amount (Principal + Interest): $total_amount"
echo
