
// https://www.codewars.com/kata/598f76a44f613e0e0b000026/swift

func sumOfIntegersInString(_ string: String) -> Int {
    string.components(separatedBy: CharacterSet.decimalDigits.inverted)
          .filter { Int($0) != nil }
          .map { Int($0)! }
          .reduce(0, +)
}