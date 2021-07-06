// https://www.codewars.com/kata/57a429e253ba3381850000fb
// 8kyu
// This function calculates body mass index (bmi = weight / height2).

// if bmi <= 18.5 returns "Underweight"

// if bmi <= 25.0 returns "Normal"

// if bmi <= 30.0 returns "Overweight"

// if bmi > 30 returns "Obese"

function bmi(weight, height) {
  let x = weight/(height**2)
  if (x <= 18.5){
    return "Underweight";
  } else if (x <= 25.0){
    return "Normal";
  } else if (x <= 30.0){
    return "Overweight";
  } else if (x > 30){
    return "Obese";
  } else {
    return "Undefined";
  }
}