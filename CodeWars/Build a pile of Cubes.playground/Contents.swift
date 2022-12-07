import UIKit

func findNb(_ number: Int) -> Int {
  var n = number
    var count = 0
    while n > 0 {
        n -= Int(pow(Double(count), Double(3)))
        count += 1
    }
    return n == 0 ? count - 1 : -1
}

