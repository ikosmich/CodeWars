https://www.codewars.com/kata/58223370aef9fc03fd000071/swift

import Foundation

func dashatize(_ number: Int) -> String {
  let arr = String(number).map {String($0)}
  var result = String()
  for num in arr {
    let integer = Int(num) ?? 0
    result += integer % 2 == 0 ? num : "-\(num)-"
  }
  return result.replacingOccurrences(of: "--", with: "-").trimmingCharacters(in: .punctuationCharacters)
}