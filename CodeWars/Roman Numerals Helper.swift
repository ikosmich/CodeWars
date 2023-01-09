// Create a RomanNumerals class that can convert a roman numeral to and from an integer value. It should follow
// the API demonstrated in the examples below. Multiple roman numeral values will be tested for each 
//helper method.

// Modern Roman numerals are written by expressing each digit separately starting with the left most digit and
 //skipping any digit with a value of zero. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting
  //in MCMXC. 2008 is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending order: MDCLXVI.

// Input range : 1 <= n < 4000

// In this kata 4 should be represented as IV, NOT as IIII (the "watchmaker's four").

// Examples
// RomanNumerals.toRoman(1000); // should return 'M'
// RomanNumerals.fromRoman('M'); // should return 1000

import Foundation


class RomanNumerals {

  static func toRoman(_ number: Int) -> String {
    let encodeDicts: [[Int: String]] = [
    [1000:"M"], [900:"CM"], [500:"D"], [400:"CD"], [100:"C"], [90:"XC"], [50:"L"],
    [40:"XL"], [10:"X"], [9:"IX"], [5:"V"], [4:"IV"], [1:"I"]
    ]
    var numToEncode = number
    var romanNum = ""
    for dict in encodeDicts {
      for (num, roman) in dict {
        while numToEncode >= num {
          numToEncode -= num
          romanNum += roman
        }
      }
    }
    return romanNum
  }
  
  static func fromRoman(_ roman: String) -> Int {
    let encodeDicts: [[String: Int]] = [
    ["M":1000], ["CM":900], ["D":500], ["CD":400], ["C":100], ["XC":90], ["L":50],
    ["XL":40], ["X":10], ["IX":9], ["V":5], ["IV":4], ["I":1]
    ]
    var stringToEncode = "\(roman) "
    var result = 0
    for dict in encodeDicts {
      for (roman, num) in dict {
        while !stringToEncode.isEmpty {
          if String(stringToEncode.prefix(2)) == roman {
            result += num
            stringToEncode.removeFirst(2)
          } else if String(stringToEncode.prefix(1)) == roman {
            result += num
            stringToEncode.removeFirst(1)
          } else {
            break
          }
        }
      }
    }
    return result
    }
}