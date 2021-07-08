// https://www.codewars.com/kata/53dbd5315a3c69eed20002dd
// 7kyu
// My function takes a list of non-negative integers and strings and returns a new list with the strings filtered out.

const filter_list = (l) => {
  let nonums = l.filter(x=>typeof(x)!='string')
  return nonums
  }