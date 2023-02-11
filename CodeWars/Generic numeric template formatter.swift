// https://www.codewars.com/kata/59901fb5917839fe41000029

import Foundation

extension String {
	subscript(_ offset: Int) -> String { 
		String(self[index(startIndex, offsetBy: offset)])
	}
	var isNumberOrWhitespace: Bool {
	 	!CharacterSet.letters.contains(UnicodeScalar(self) ?? " ") || Int(self) != nil
	}
	mutating func insertFiller() {
		self.insert(" ", at: startIndex)
	}
}

func numericFormatter(_ template: String, _ numbers: String = "1234567890") -> String {
	guard !template.isEmpty else {
		return numbers
	}
	var formattedString = [String]()
	var numbersString = numbers
	while numbersString.count < template.count {
		numbersString += numbers
	}
	for i in 0..<template.count {
		let char = template[i]
		let num = numbersString[i]
		if char.isNumberOrWhitespace {
			formattedString.append(char)
			numbersString.insertFiller()
		} else {
			formattedString.append(num)
		}	
	}
	return formattedString.joined()
}