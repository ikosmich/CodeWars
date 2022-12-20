import Foundation

func correct(_ timeString: String?) -> String? {
 	guard let str = timeString else { return nil }
 	guard timeString != "" else { return "" }
	let timeArray = str.components(separatedBy: ":")
							   .filter { Double($0) != nil }
							   .map { Double($0)! }
	guard timeArray.count == 3 else { return nil }
	let seconds = timeArray[0] * 3600 + timeArray[1] * 60 + timeArray[2]
	return "\(Date(timeIntervalSince1970: seconds))".components(separatedBy: " ")[1]
}