//You will be given a number and you will need to return it as a string in Expanded Form. For example:
//
//expandedForm 12    -- Should return '10 + 2'
//expandedForm 42    -- Should return '40 + 2'
//expandedForm 70304 -- Should return '70000 + 300 + 4'
//NOTE: All numbers will be whole numbers greater than 0.


func expandedForm(_ num: Int) -> String {
  var number = UInt(num) {
    willSet {
      devider *= 10
      temp = newValue - (newValue / devider) * devider
    }
  }
  var devider: UInt = 1
  var temp: UInt = 0
  var result = [String]()
  while number > temp {
    number -= temp
    result.append("\(temp)")
  }
  return result.reversed().filter({$0 != "0"}).joined(separator: " + ")
}