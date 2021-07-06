// https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9
// 7kyu
// Given a string of words, this function returns the length of the shortest word(s).

function findShort(s){
  return Math.min(...s.split(' ').map(i=> i.length))
}