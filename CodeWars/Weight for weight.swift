// My friend John and I are members of the "Fat to Fit Club (FFC)". John is worried because each month a list with the weights of members is published and each month he is the last on the list which means he is the heaviest.

// I am the one who establishes the list so I told him: "Don't worry any more, I will modify the order of the list". It was decided to attribute a "weight" to numbers. The weight of a number will be from now on the sum of its digits.

// For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99.

// Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?

// Example:
// "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: 

// "100 180 90 56 65 74 68 86 99"
// When two numbers have the same "weight", let us class them as if they were strings (alphabetical ordering) and not numbers:

// 180 is before 90 since, having the same "weight" (9), it comes before as a string.

// All numbers in the list are positive numbers and the list can be empty.

// Notes
// it may happen that the input string have leading, trailing whitespaces and more than a unique whitespace between two consecutive numbers
// For C: The result is freed.

import Foundation

func orderWeight(_ s: String) -> String {
  guard !s.replacingOccurrences(of: " ", with: "").isEmpty else { return s }
  var numsArray: [[Int]] = []
  var sArray = s.components(separatedBy: .whitespacesAndNewlines)
                .filter { !$0.isEmpty }
                .sorted()
  sArray.forEach { str in
      numsArray.append(str.map { Int(String($0)) ?? 0 })
  }
  var reducedArray = numsArray.map { $0.reduce(0, +) }
  var count = reducedArray.count
  while count >= 0 {
    count -= 1
    for index in 1..<reducedArray.count {
      if reducedArray[index - 1] == reducedArray[index] {
          continue
      } else if reducedArray[index - 1] > reducedArray[index] {
        sArray.insert(sArray.remove(at: index - 1), at: index)
        reducedArray.insert(reducedArray.remove(at: index - 1), at: index)
      }
    }
  }
  return sArray.joined(separator: " ")
}