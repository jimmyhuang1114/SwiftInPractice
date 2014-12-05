//
//  Book.swift
//  DemoTypeCasting
//
//  Created by Jimmy Huang on 12/4/14.
//  Copyright (c) 2014 Jimmy Huang. All rights reserved.
//

import Foundation

class Book {
    var title: String
    init(title: String) {
        self.title = title
    }
}

class Novel: Book {
    var author: String
    init(author: String, title: String) {
        self.author = author
        super.init(title: title)
    }
}

class Magazine: Book {
    var month: Int
    init(month: Int, title: String) {
        self.month = month
        super.init(title: title)
    }
}

class Movie {
    var title: String
    var genre: String
    init(title: String, genre: String) {
        self.title = title
        self.genre = genre
    }
}


