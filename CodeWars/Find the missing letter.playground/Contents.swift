import UIKit

//Find the missing letter
//
//Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.
//
//You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
//The array will always contain letters in only one case.
//
//Example:
//
//["a","b","c","d","f"] -> "e" ["O","Q","R","S"] -> "P"
//
//(Use the English alphabet with 26 letters!)
//
//Have fun coding it and please don't forget to vote and rank this kata! :-)
//
//I have also created other katas. Take a look if you enjoyed this kata!

func findMissingLetter(_ chArr: [Character]) -> Character {
    let alphabetLowerCased: [Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    let alphabetUpperCases: [Character] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    if chArr[0].isLowercase {
        let firstCharIndex = alphabetLowerCased.firstIndex(of: chArr[0]) ?? 0
        let lastCharIndex = alphabetLowerCased.lastIndex(of: chArr.last ?? " ") ?? 0
        for i in alphabetLowerCased[firstCharIndex...lastCharIndex] {
            if !chArr.contains(i) {
                return i
            }
        }
    } else {
        let firstCharIndex = alphabetUpperCases.firstIndex(of: chArr[0]) ?? 0
        let lastCharIndex = alphabetUpperCases.lastIndex(of: chArr.last ?? " ") ?? 0
        for i in alphabetUpperCases[firstCharIndex...lastCharIndex] {
            if !chArr.contains(i) {
                return i
            }
        }
    }
    return " "
}
