//
//  Book.swift
//  BookShelf
//
//  Created by Sebastian Banks on 3/18/22.
//

import Foundation

class Book {
    
    let title: String
    let author: String
    let cover: String
    let releaseYear: Int
    let desc: String
    
    init(title: String, author: String, cover: String, releaseYear: Int, desc: String) {
        self.title = title
        self.author = author
        self.cover = cover
        self.releaseYear = releaseYear
        self.desc = desc
    }
}
