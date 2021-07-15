// https://www.codewars.com/kata/5715eaedb436cf5606000381
// 8kyu
// My function takes an array of numbers, & returns the sum of all of the positives ones.

function positiveSum(r) {
  if (r.length == 0) {
    return 0
  } else if (r.every((i) => i < 0)){
    return 0
  } else if (r.every((i) => i >= 0)){
    return r.reduce((p,n) => p + n)
  } else {
    let c = r.filter((i) => i > 0)
    return c.reduce((a,b) => a + b)
  }
}