// https://www.codewars.com/kata/54edbc7200b811e956000556
// 8kyu
// Consider an array/list of sheep where some sheep may be missing from their place. I wrote a function that counts the number of sheep present in the array (true means present).

function countSheeps(r) {
  let x = []
  let y = r.filter((i) => i == true)
  return y.length
}