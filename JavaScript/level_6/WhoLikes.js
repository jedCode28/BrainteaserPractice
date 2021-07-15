// https://www.codewars.com/kata/5266876b8f4bf2da9b000362
// 6kyu
// I implemented a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. 

function likes(n) {
  if (n == false){
    return 'no one likes this'
  } else if(n.length == 1) {
    return `${n} likes this`
  } else if(n.length == 2) {
    return `${n[0]}` + " and " + `${n[1]}` + ' like this'
  }else if(n.length == 3) {
    return `${n[0]}` + ", " + `${n[1]}` + " and " + `${n[2]}` + ' like this'
  } else if(n.length > 3) {
    let x = n.length - 2
    return `${n[0]}` + ", " + `${n[1]}` + " and " + x + ' others like this'
  }
}