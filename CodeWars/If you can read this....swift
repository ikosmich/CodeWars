//https://www.codewars.com/kata/586538146b56991861000293/swift



let nato: [Character : String] = ["a":"Alfa", "b":"Bravo", "c":"Charlie", "d":"Delta", "e":"Echo", "f":"Foxtrot", "g":"Golf", "h":"Hotel", "i":"India", "j":"Juliett", "k":"Kilo", "l":"Lima", "m":"Mike", "n":"November", "o":"Oscar", "p":"Papa", "q":"Quebec", "r":"Romeo", "s":"Sierra", "t":"Tango", "u":"Uniform", "v":"Victor", "w":"Whiskey", "x":"Xray", "y":"Yankee", "z":"Zulu"]

func toNato(_ words: String) -> String {
words.lowercased()
      .map { nato[$0] ?? String($0) }
      .filter { $0 != " "}
      .joined(separator: " ")
}