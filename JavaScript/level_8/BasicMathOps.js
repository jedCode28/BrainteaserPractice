// https://www.codewars.com/kata/57356c55867b9b7a60000bd7
// 8kyu
// The task is to create a function that does four basic mathematical operations.

// The function should take three arguments - operation(string/char), value1(number), value2(number).
// The function should return result of numbers after applying the chosen operation.


function basicOp(op, v1, v2){
  return eval(v1 + op.valueOf() + v2)
}