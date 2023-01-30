//Description:
//
//Encrypt this!
//
//You want to create secret messages which can be deciphered by the Decipher this! kata. Here are the conditions:
//
//Your message is a string containing space separated words.
//You need to encrypt each word in the message using the following rules:
//The first letter must be converted to its ASCII code.
//The second letter must be switched with the last letter
//Keepin' it simple: There are no special characters in the input.
//Examples:
//
//encryptThis "Hello" == "72olle"
//encryptThis "good" == "103doo"
//encryptThis "hello world" == "104olle 119drlo"

import Foundation

func encryptThis(text:String) -> String{
    var encryptedArrayOfStrings: [String] = []
    for word in text.components(separatedBy: " ") {
        var encryptedWord = ""
        encryptedWord += String(word.first!.asciiValue!)
        if word.count < 2 {
            encryptedArrayOfStrings.append(encryptedWord)
            continue
        }
        encryptedWord += String(word.last!)
        if word.count < 3 {
            encryptedArrayOfStrings.append(encryptedWord)
            continue
        }
        encryptedWord += String(word.dropFirst(2).dropLast(1))
        let secondChar = word.suffix(word.count - 1)
        encryptedWord += String(secondChar.first!)
        encryptedArrayOfStrings.append(encryptedWord)
    }
    return encryptedArrayOfStrings.joined(separator: " ")
}
