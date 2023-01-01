//DESCRIPTION:
//
//Write a function that when given a number >= 0, returns an Array of ascending 
//length subarrays.
//pyramid(0) => [ ]
//pyramid(1) => [ [1] ]
//pyramid(2) => [ [1], [1, 1] ]
//pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]
//Note: the subarrays should be filled with 1s

func pyramid(_ n: Int) -> [[Int]] {
	var arrayOfArrays: [[Int]] = []
	for i in 0...n {
		if i == 0 {
			continue
		}
		arrayOfArrays.append(Array(repeating: 1, count: i))
	}
	return arrayOfArrays
}
