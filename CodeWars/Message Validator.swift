https://www.codewars.com/kata/5fc7d2d2682ff3000e1a3fbc/swift

import Foundation

extension String {
  	var splitNumsWords:[[String]] {
    	if let first = self.first, let last = self.last {
      		guard first.isNumber || !last.isNumber else { return [[" "], [""]] }
    	}
    	let arr = [self.components(separatedBy: CharacterSet.decimalDigits).filter { !$0.isEmpty }, self.components(separatedBy: CharacterSet.decimalDigits.inverted).filter { !$0.isEmpty }]
    	return arr
  	}
}

func isAValidMessage(_ message: String) -> Bool {
  	var isMessage = true
  	let splitted = message.splitNumsWords
 	guard splitted[0].count == splitted[1].count else { return false } 
  	for i in 0..<splitted[0].count {
      		if splitted[0][i].count != Int(splitted[1][i]) ?? 0 {
        		isMessage = false
        		break
      		}
    	}
  	return isMessage
}