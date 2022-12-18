func diamond(_ size: Int) -> String? {
  guard size % 2 != 0 && size > 0 else { return nil }
  var diamondString = ""
  var xCount = 1 {
    didSet {
      if xCount > oldValue {
        spaceCount -= 1
      } else {
        spaceCount += 1
      }
    }
  }
  var spaceCount = (size - xCount)/2
  var newLine: String {
     "\(String(repeating: " ", count: spaceCount) + String(repeating: "*", count: xCount))\n"
  }
  while xCount <= size {
    diamondString += newLine
    xCount += 2
  } 
  xCount = size
  while xCount > 1 {
    xCount -= 2
    diamondString += newLine
  } 
  return diamondString
}