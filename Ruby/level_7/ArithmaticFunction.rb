# https://www.codewars.com/kata/583f158ea20cfcbeb400000a
# 7kyu
# I wrote this function that when given two numbers and an arithmetic operator (the name of it, as a string), 
# returns the result of the two numbers having that operator used on them.
# Test assumptions: a and b will both be positive integers, and a will always be the first number in the operation, and b always the second.
# The four operators are "add", "subtract", "divide", "multiply".

def arithmetic(a, b, op)
  op == "add" ? a + b : op == "subtract" ? a - b : op == "divide" ? a / b : a * b
end