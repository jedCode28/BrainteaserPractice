// https://www.codewars.com/kata/554b4ac871d6813a03000035
// 7kyu
// Given a string of space separated numbers, my function returns the highest and lowest number.

function highAndLow(numbers){
  let x = numbers.split(' ')
  let y = x.map((i) => Number(i))
  let z = y.sort((a,b) => b-a)
    return z[0] + " " + z[z.length - 1]
}