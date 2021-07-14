// https://www.codewars.com/kata/566fc12495810954b1000030
// 7kyu
// I wrote a function that takes an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer,
// squares all numbers k (0 <= k <= n) between 0 and n,
// counts the numbers of digits d used in the writing of all the k**2,
// & calls nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.

function nbDig(n, d) {
  let m = [];
  for (let i = 0; i <= n; i++) {
    m.push(i * i);
  }
  let p = m.join('').split('')
  let count = p.filter(i => i == d).length
  return count
}