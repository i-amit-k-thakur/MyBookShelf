//
//  BookRowView.swift
//  MyBookShelf
//
//  Created by Amit Thakur on 02/10/2025.
//

import SwiftUI

struct BookRowView: View {
    var book: Book
    
    var body: some View {
        HStack(alignment: .top) {
            
            Image(book.isbn)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 90)
            
            VStack(alignment: .leading) {
                Text(book.title).font(.headline)
                Text(book.author).font(.subheadline)
                Text("\(book.pages) pages").font(.footnote)
            }
            
            Spacer()
        }
    }
}

#Preview {
    BookRowView(book: Book.sampleBooks.first!)
}
