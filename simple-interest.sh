
#!/bin/bash

echo "Simple Interest Calculator"
echo "-------------------------"

read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (% per year): " rate
read -p "Enter Time Period (in years): " time

interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "-------------------------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
