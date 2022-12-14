import Foundation

//For a given string s find the character c (or C) with longest consecutive repetition and return:
//where l (or L) is the length of the repetition. If there are two or more characters with the same l
//return the first in order of appearance.
//For empty string return:
//["": 0]


func longestRepetition(_ s: String) -> [String: Int] {
    guard !s.isEmpty else { return ["": 0] }
    let charArr = s.map { $0 }
    var countDict: [[String: Int]] = []
    var count = 1
    for index in 0..<s.count - 1 {
        if charArr[index] == charArr[index + 1] && index + 2 == charArr.endIndex {
            count += 1
            countDict.append([String(charArr[index]): count])
        } else if charArr[index] == charArr[index + 1] {
            count += 1
        } else {
            countDict.append([String(charArr[index]): count])
            count = 1
        }
    }
    return countDict.sorted { dict1, dict2 in
        dict1.values.first! > dict2.values.first!
    }.first!
}

