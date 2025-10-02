//
//  Book.swift
//  MyBookShelf
//
//  Created by Amit Thakur on 02/10/2025.
//

import Foundation

struct Book: Identifiable {
    var id = UUID()
    var title:String
    var author: String
    var isbn: String
    var pages: Int
}

extension Book {
    static let sampleBooks:[Book] = [
        .init(title: "The Great Gatsby", author: "F. Scott Fitzgerald", isbn: "tgg", pages: 180),
        .init(title: "Shantaram", author: "Gregory David Roberts", isbn: "shan", pages: 944),
        .init(title: "The Alchemist", author: "Paulo Coelho", isbn: "ta", pages: 224),
    ]
}
