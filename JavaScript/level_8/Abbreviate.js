// https://www.codewars.com/kata/57eadb7ecd143f4c9c0000a3
// 8kyu
// I wrote a function to convert a name into initials. This kata strictly takes two words with one space in between them.
// The output should be two capital letters with a dot separating them.

function abbrevName(name){
  const x = name.split(' ')
  const f = x[0].split('')
  const l = x[1].split('')
  return f[0].toUpperCase() + "." + l[0].toUpperCase()
}