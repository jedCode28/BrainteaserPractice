// https://www.codewars.com/kata/526c7363236867513f0005ca
// 7kyu
// I wrote a function that returns true or false whether a given year is a leap year. 
// The parameters are: 
// years divisible by 4 are leap years
// but years divisible by 100 are not leap years
// but years divisible by 400 are leap years

function isLeapYear(y) {
  if (y % 400 == 0){
    return true
  } else if(y % 100 == 0){
    return false
  } else if(y % 4 == 0){
    return true
  } else {
    return false
  }
}