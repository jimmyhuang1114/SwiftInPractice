//
//  main.swift
//  DemoTypeCasting
//
//  Created by Jimmy Huang on 12/4/14.
//  Copyright (c) 2014 Jimmy Huang. All rights reserved.
//

import Foundation

/* Example 1: for using "is" to check the subclass */
let bookshelf:[AnyObject] = [
    Novel(author: "九把刀", title: "那些年，我們一起追的女孩"),
    Novel(author: "彎彎", title: "可不可以不要上班"),
    Novel(author: "H.H先生", title: "美美的逆襲"),
    Magazine(month: 12, title: "PC Home"),
    Magazine(month: 1, title: "PC DIY"),
    Movie(title: "Interstellar", genre: "scifi")
]

// use is to check its instance's class type
var bookCount = 0
var novelCount = 0
var magazineCount = 0
var movieCount = 0

for item in bookshelf {
    if item is Novel {
        novelCount++
    }
    
    if item is Magazine {
        magazineCount++
    }

    if item is Book {
        bookCount++
    }
    
    if item is Movie {
        movieCount++
    }
}

println("Novels:\(novelCount) Magazines:\(magazineCount) Books:\(bookCount) Movies:\(movieCount)")
println()

/* Example 2: Downcasting with as? */
let onlyBooksInshelf = [
        Novel(author: "九把刀", title: "那些年，我們一起追的女孩"),
        Novel(author: "彎彎", title: "可不可以不要上班"),
        Novel(author: "H.H先生", title: "美美的逆襲"),
        Magazine(month: 12, title: "PC Home"),
        Magazine(month: 1, title: "PC DIY")
]

// print out the details by using as?
for item in onlyBooksInshelf {
    if let novel = item as? Novel {
        println("Novel's title: \(novel.title), author:\(novel.author)")
    }else if let magazine = item as? Magazine {
        println("Magazine's title: \(magazine.title), month:\(magazine.month)")
    }else {
        println("nothing")
    }
}

println()

/* Example 3: Downcasting with as */

// we need to make sure there is no return with nil
let onlyNovelsInshelf = [
    Novel(author: "九把刀", title: "那些年，我們一起追的女孩"),
    Novel(author: "彎彎", title: "可不可以不要上班"),
    Novel(author: "H.H先生", title: "美美的逆襲")
]

for item in onlyNovelsInshelf {
    let novel = item as Novel
    println("Novel's title: \(novel.title), author:\(novel.author)")
}

println()

// for shorten form of this loop
for novel in onlyNovelsInshelf as [Novel] {
    println("Novel's title: \(novel.title), author:\(novel.author)")
}

println()

/* Example 4: Any type */
let shelf:[Any] = [
    "iPhone 6 Plus",
    1,
    1.0,
    Novel(author: "九把刀", title: "那些年，我們一起追的女孩"),
    Movie(title: "Interstellar", genre: "Scifi")
]

// using switch to print out details
for item in shelf {
    switch item {
    case let anString as String:
        println("\(item) is a String")
    case let anInt as Int:
        println("\(item) is an Int")
    case let anDouble as Double:
        println("\(item) is a Double")
    case let aNovel as Novel:
        println("\(item) is a Novel and its title & author :\(aNovel.title); \(aNovel.author)")
    case let aMovie as Movie:
        println("\(item) is a Movie and its title & genre:\(aMovie.title); \(aMovie.genre)")
    default:
        break
    }
}

println()