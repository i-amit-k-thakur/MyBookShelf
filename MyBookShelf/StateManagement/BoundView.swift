//
//  BoundView.swift
//  MyBookShelf
//
//  Created by Amit Thakur on 03/10/2025.
//

import SwiftUI

struct BoundView: View {
    @State var favouriteNumber: Int = 42
    
    var body: some View {
        VStack {
            Text("Your favourite numbers is \(favouriteNumber)")
            ChildView(number: $favouriteNumber)
        }
    }
}

#Preview {
    BoundView()
}

struct ChildView: View {
    @Binding var number: Int
    
    var body: some View {
        Stepper("\(number)", value: $number, in: 0...100)
    }
}
