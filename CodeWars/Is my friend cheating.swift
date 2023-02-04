import Foundation

//https://www.codewars.com/kata/5547cc7dcad755e480000004/swift

func removNb(_ n: Int) -> [(Int, Int)] {
  let sumOfSequence = (1...n).reduce(0, +)
  var resultPairs: [(Int, Int)] = []
  for first in 1...n {
    let second = (sumOfSequence - first) / (first + 1)
    guard second <= n else { continue }
    if (sumOfSequence - first) % (first + 1) == 0 {
        resultPairs.append((first, second))
    }
  }
  return resultPairs
}

print(removNb(906))