//
//  BookShelfView.swift
//  MyBookShelf
//
//  Created by Amit Thakur on 02/10/2025.
//

import SwiftUI
internal import Combine

struct BookShelfView: View {
    @StateObject fileprivate var viewModel = BooksViewModel()
    
    var body: some View {
        List(viewModel.books) { abook in
            BookRowView(book: abook)
        }
        .listStyle(.plain)
        .overlay {
            if viewModel.fetching {
                ProgressView("Fetching books, please wait...")
                    .progressViewStyle(CircularProgressViewStyle())
            }
        }
        .animation(.default, value: viewModel.books)
        .task {
            await viewModel.fetchData()
        }.navigationBarTitle("Books")
    }
}

protocol BooksViewModelProtocol: ObservableObject {
    var books:[Book] { get set }
}

private class BooksViewModel: ObservableObject {
    @Published var books:[Book] = [Book]()
    @Published var fetching = false
    
    @MainActor
    func fetchData() async {
        fetching = true
        do {
            try await Task.sleep(nanoseconds: 5_000_000_000)
        } catch {
            print("Sleep exception")
        }
        books = Book.sampleBooks
        fetching = false
    }
    
    
}

#Preview {
    BookShelfView()
}
