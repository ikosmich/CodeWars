import UIKit

//There is an array with some numbers. All numbers are equal except for one. Try to find it!
//findUniq([ 1, 1, 1, 2, 1, 1 ]) == 2
//findUniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
//It’s guaranteed that array contains at least 3 numbers.
//
//The tests contain some very huge arrays, so think about performance.
//
//This is the first kata in series:
//
//Find the unique number (this kata)
//Find the unique string
//Find The Unique

func findUniq(_ arr: [Int]) -> Int {
  for (i,v) in arr.enumerated() {
        if i == 0 && v != arr[i+1] && v != arr[i+2] {
            return v
        } else if i == arr.endIndex-1 && v != arr[i-1] && v != arr[i-2] {
            return v
        } else if i != 0 && i != arr.endIndex-1 && v != arr[i-1] && v != arr[i+1] {
            return v
        }
    }
    return 0
}
