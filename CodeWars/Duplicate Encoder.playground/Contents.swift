import UIKit

//The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.
//
//Examples
//
//"din"      =>  "((("
//"recede"   =>  "()()()"
//"Success"  =>  ")())())"
//"(( @"     =>  "))(("
//Notes
//
//Assertion messages may be unclear about what they display in some languages. If you read "...It Should encode XXX", the "XXX" is the expected result, not the input!



func duplicateEncode(_ word: String) -> String {
    let arr = word.lowercased()
  var duplicates = ""
  for v1 in arr {
    var count = 0
    for v2 in arr {
      if v1 == v2 {
        count += 1
      }
    }
    if count > 1 {
      duplicates.append(")")
    } else {
      duplicates.append("(")
    }
  }
  return duplicates
}
