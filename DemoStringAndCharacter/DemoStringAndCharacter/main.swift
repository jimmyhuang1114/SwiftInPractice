//
//  main.swift
//  DemoStringAndCharacter
//
//  Created by Jimmy Huang on 1/12/15.
//  Copyright (c) 2015 Jimmy Huang. All rights reserved.
//

import Foundation

// 1. String and Character Literals

let str = "Hello Swift"

let strA = "A"                                 // strA's type is String in default
let charB: Character = "B"                     // charB's type is Character

let lineFeed = "A Swift a day keeps...\n\tObjective-C away!\n"
print(lineFeed)

let wise = "\"Don't let people tell your ideas won't work.\" - Dennis Crowley"
println(wise)

// display via unicode scalar
let littleMouse = "\u{40}"                          // unicode scalar U+0040
println(littleMouse)
for codeUnit in littleMouse.utf8 {
    println("littleMouse's UTF-8: \(codeUnit)")
}

let 蘋果 = "\u{860B}\u{679C}"                      // 蘋果
println(蘋果)
for codeUnit in 蘋果.utf8 {
    print("\(codeUnit) ")
}
println()
for codeUnit in 蘋果.utf16 {
    print("\(codeUnit) ")
}
println()
let rocket = "\u{0001F680}"
println(rocket)
let rocketSym = "🚀"
for scalar in rocketSym.unicodeScalars {
    println("\(scalar.value)")
}

// 2. Empty String
var empty = ""
var empty2 = String()

// checking string is empty or not
if empty.isEmpty {
    println("empty contains nothing!")
}else {
    println("empty has something!")
}

// 3. Counting Characters
println(countElements(str))                     // str: Hello Swift has 11 characters

let sayHiToTokyoTower = "Say Hi! 🗼"
println(countElements(sayHiToTokyoTower))       // sayHiToTokyoTower has 9 characters

println(sayHiToTokyoTower.utf16Count)           // equals to NSString's length

// 4. Concatenating Strings and Characters
let str1 = "Hi Swift, "
let str2 = "you are so sexy"
let exclamationMark:Character = "!"
var meetSwift = str1 + str2
meetSwift.append(exclamationMark)
println(meetSwift)

meetSwift += " But you are hard to pick up!"
println(meetSwift)

// 5. Comparing Strings

// String Equality
let strEqual = "Hello Swift"
if str == strEqual {
    println("Those two strings are equal")
}
if rocket == rocketSym {
    println("These rockets are equal")
}

// Ordered Comparision
let apple = "Apple"
let google = "Google"

if google < apple {
    println("\(apple) is smaller than \(google)")
}else {
    println("\(apple) is larger than \(google)")
}

// Prefix and Suffix Equality
let products = [
    "iOS: Apple iPhone 5 (phone)",
    "iOS: Apple iPhone 6+ (phone)",
    "iOS: Apple iPad Air (tablet)",
    "Android: Google Nexus 6 (tablet)",
    "Android: Sony Z3 Compact (phone)"
]
println("Prefix:")
for i in products {
    if i.hasPrefix("iOS") {
        println(i)
    }
}
println("Suffix:")
for i in products {
    if i.hasSuffix("(phone)") {
        println(i)
    }
}

// 6. Character Indices and Ranges
let chars = "abcdefghij"
let index = advance(chars.startIndex, 3)
let dChar = chars[index]
println(dChar)                                      // result: d

let coffee = "星巴克家常咖啡"
let homeChar = coffee[index]
println(homeChar)                                   // result: 家

// string's range
let startIndex = advance(chars.startIndex, 3)
let endIndex = advance(startIndex, 3)
let range = startIndex...endIndex
let someChars = chars[range]                        // result: defg
let someCoffee = coffee[range]                      // result: 家常咖啡
println(someChars)
println(someCoffee)

// substringToIndex
println(chars.substringToIndex(index))
println(coffee.substringToIndex(index))

// substringFromIndex
println(chars.substringFromIndex(index))
println(coffee.substringFromIndex(index))

// 7. Uppercase and lowercase of String
println(str.uppercaseString)                        // result: HELLO SWIFT
println(str.lowercaseString)                        // result: hello swift

// 8. String Interpolation
let mobile = "iPhone"
let version = 6
println("\(mobile) \(version) is awesome!")

// 9. String is a value type
var hisFavour = "coffee"
var herFavour = hisFavour

println("His favourite drink is \(hisFavour)")
println("Her favourite drink is \(herFavour)")

herFavour = "black tea"

println("His favourite drink is \(hisFavour)")
println("Her favourite drink is \(herFavour)")

// 10. Interoperability with NSString

// use componentsSeparatedByString method that is from NSString
let brands = "Apple, Google, Microsoft, Facebook, Samsung, Sony"
let each = brands.componentsSeparatedByString(", ")
println(each)
println(each[1])

// NSRange by integer vs. String.index
var describ = "iPhone is awesome!"
let nsRange = NSMakeRange(1, 5)
//describ.stringByReplacingCharactersInRange(nsRange, withString: "Pad") <= Error

//=> solution 1:
var nsDescrib:NSString = "iPhone is awesome!"
let newNSDescrib = nsDescrib.stringByReplacingCharactersInRange(nsRange, withString: "Pad")
println(newNSDescrib)

//=> solution 2:
let swiftRange = advance(describ.startIndex, 1)...advance(describ.startIndex, 5)
let newDescrib = describ.stringByReplacingCharactersInRange(swiftRange, withString: "Pad")
println(newDescrib)