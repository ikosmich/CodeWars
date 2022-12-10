import Foundation

//Abbreviate the numbers that are passed in into a smaller format.
//The idea is that if the number 1,260 is passed in, you would return 1.3k.
//Only condense the numbers if they are 1,000 or larger. The highest the will be passed in will be in the 1,000,000,000,000 (1 trillion) range. The smallest will be negative 1 trillion.
//Use the following letters to represent your numbers.
//'k' for thousand
//'m' for million
//'b' for billion
//'t' for trillion
//The numbers go to the tenth decimal place and they need to be rounded.

func condense(_ num: Int) -> String {
    let k = Double(num) / 1000
    let m = Double(num) / 1000000
    let b = Double(num) / 1000000000
    let t = Double(num) / 1000000000000
    var result = ""
    if abs(t) >= 1.0 {
        result = "\(round(t * 10)/10)t"
    } else if abs(b) >= 1.0 {
        result = "\(round(b * 10)/10)b"
    } else if abs(m) >= 1.0 {
        result = "\(round(m * 10)/10)m"
    } else if abs(k) >= 1.0 {
        result = "\(round(k * 10)/10)k"
    } else {
        result = "\(num)"
    }
    return result
}
