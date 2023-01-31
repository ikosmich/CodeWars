// https://www.codewars.com/kata/52e88b39ffb6ac53a400022e

import Foundation
 
func ipv4(of i32: UInt32) -> String {
  var ipBin = String(i32, radix: 2).map { String($0) }
  var binaryParts: [String] = []
  var binStr = ""
  while ipBin.count < 32 {
  	ipBin.insert("0", at: 0)
  }
  for num in ipBin {
    binStr += num
    if binStr.count == 8 {
    	binaryParts.append(binStr)
    	binStr = ""
    }
  }
  var ipArray: [String] = []
  binaryParts.forEach { str in
  	let eachIpPart = UInt8(str, radix: 2) ?? 0
	ipArray.append(String(eachIpPart))
  }
  return ipArray.joined(separator: ".")
}
 
