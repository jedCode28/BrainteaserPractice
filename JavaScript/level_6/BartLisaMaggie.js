// https://www.codewars.com/kata/53368a47e38700bd8300030d
// 6kyu
// Given: an array containing hashes of names
// Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.



function list(names){
  if (names == false) {
    return ''
  } else if(names.length > 2) {
      let x = names.length - 1
      let y = names.slice(0,x).map(n => n.name).join(', ')
      return y + " & " + names[x].name
  } else if (names.length == 2){
    return names[0].name + " & " + names[1].name
  } else if (names.length = 1){
    return names[0].name
  }
  }