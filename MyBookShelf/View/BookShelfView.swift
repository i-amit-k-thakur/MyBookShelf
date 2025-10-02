//
//  BookShelfView.swift
//  MyBookShelf
//
//  Created by Amit Thakur on 02/10/2025.
//

import SwiftUI

struct BookShelfView: View {
    
    var books:[Book]
    
    var body: some View {
        List(books) { book in
            BookRowView(book: book)
        }.listStyle(.plain)
    }
}

#Preview {
    BookShelfView(books: Book.sampleBooks)
}
