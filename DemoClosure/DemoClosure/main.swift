//
//  main.swift
//  DemoClosure
//
//  Created by Jimmy Huang on 12/23/14.
//  Copyright (c) 2014 Jimmy Huang. All rights reserved.
//

import Foundation

/* Example 1: Demo the use of normal function call */

//=> CASE 1 : call function
// define the function greeting which type is (String) -> (String)
func greeting(s0: String) -> (String) {
    return "Hello \(s0) which can work together well with Objective-C!"
}

// call greeting function
var returnMsg = greeting("Swift")
println("CASE 1: \(returnMsg)")

//=> CASE 2: assign function to a variable
var funVar = greeting

// call it via variable
returnMsg = funVar("Swift")
println("CASE 2: \(returnMsg)")

//=> CASE 3: call function as a function's parameter
func useFuncAsParam(string: String, funcAsParam:(String) -> (String)) -> (String) {
    return funcAsParam(string)
}

returnMsg = useFuncAsParam("Swift", greeting)
println("CASE 3: \(returnMsg)")

/* Example 2: Demo the use of closure */

//=> CASE 4: use closure as a function's parameter
returnMsg = useFuncAsParam("Swift", {(s0: String) -> (String) in
    return "Hello \(s0) which can work together well with Objective-C!"})
println("CASE 4: \(returnMsg)")

//=> CASE 5: use inferred type to reduce closure
returnMsg = useFuncAsParam("Swift", {s0 in
    return "Hello \(s0) which can work together well with Objective-C!"})
println("CASE 5: \(returnMsg)")

//=> CASE 6: use shorthand arguments to reduce more
returnMsg = useFuncAsParam("Swift", {
    return "Hello \($0) which can work together well with Objective-C!"})
println("CASE 6: \(returnMsg)")

//=> CASE 7: use trailing closure to express
returnMsg = useFuncAsParam("Swift"){
    return "Hello \($0) which can work together well with Objective-C!"
}
println("CASE 7: \(returnMsg)")

/* Example 3: use closure to sort array */
let brands = ["Apple", "Facebook", "Google", "Microsoft", "Amazon"]

//=> CASE 8: define closure for sorting
var sortedBrands = brands.sorted({
    (s0: String, s1: String) -> Bool in
    return s0 < s1
})
println("CASE 8: \(sortedBrands)")

//=> CASE 9: use shorthand parameter instead
sortedBrands = brands.sorted(){$0 < $1}
println("CASE 9: \(sortedBrands)")

//=> CASE 10: remove () off
sortedBrands = brands.sorted{$0 < $1}
println("CASE 10: \(sortedBrands)")

/* Example 4: use closure to map array */

//=> CASE 11
let mappingDict = ["XD":"笑到超開心", "Bj4":"不解釋", "Orz":"很冏", "魯蛇":"loser", "灑花":"很開心"]
let networkTerms = ["XD", "Orz", "Bj4"]
let transTerms = networkTerms.map{
    (var term) -> String in
    var each = mappingDict[term]
    if let output = each {
        return output
    }else {
        return "input error!"
    }
}
println("CASE 11: \(transTerms)")

//=> CASE 12
let squareArray = [1, 2, 3].map{ $0 * $0 }
println("CASE 12: \(squareArray)")

/* Example 5: Demo capturing values */

//=> CASE 13
typealias increamentOneUnit = () -> Int

func increamentor(start from: Int, each amount: Int) -> increamentOneUnit {
    var total = from;
    return {
        total += amount
        return total
    }
}

let adder1 = increamentor(start: 10, each: 10)
println("CASE 13:")
println(adder1())
println(adder1())
println(adder1())

let adder2 = increamentor(start: 10, each: 10)
println(adder2())