// https://www.codewars.com/kata/5300901726d12b80e8000498
// 7kyu
// I wrote a function that returns an array containing the numbers from 1 to N, where N is the parametered value. It then replaces
// certain values however if any of the following conditions are met:

// If the value is a multiple of 3: use the value "Fizz" instead
// If the value is a multiple of 5: use the value "Buzz" instead
// If the value is a multiple of 3 & 5: use the value "FizzBuzz" instead


function fizzbuzz(n){
  let m = []
  for(let i = 1; i <= n; i++){
    if(i % 3 == 0 && i % 5 == 0){
      let i = "FizzBuzz"
      m.push(i)
    } else if(i % 3 == 0){
      let i = "Fizz"
      m.push(i)
    } else if(i % 5 == 0){
      let i = "Buzz"
      m.push(i)
    } else {
      m.push(i)
    }
  }
    return m
}
