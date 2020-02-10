//
//  CustomContainers.swift
//  project-3
//
//  Created by Nicolau Atala Pelluzi on 10/02/20.
//  Copyright © 2020 Nicolau Atala Pelluzi. All rights reserved.
//

import SwiftUI

struct CustomContainers: View {
    var body: some View {
       GridStack(rows: 4, columns: 4) { row, col in
            HStack {
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
        }
    }
}

/*
 To try it out, we’re going to make a new type of stack called a GridStack, which will let us create any number of views inside a grid. What we want to say is that there is a new struct called GridStack that conforms to the View protocol and has a set number of rows and columns, and that inside the grid will be lots of content cells that themselves must conform to the View protocol.

 In Swift we’d write this:
 */

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }

    var body: some View {
        VStack {
            ForEach(0 ..< rows) { row in
                HStack {
                    ForEach(0 ..< self.columns) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
}

/*
 The first line – struct GridStack<Content: View>: View – uses a more advanced feature of Swift called generics, which in this case means “you can provide any kind of content you like, but whatever it is it must conform to the View protocol.” After the colon we repeat View again to say that GridStack itself also conforms to the View protocol.

 Take particular note of the let content line – that defines a closure that must be able to accept two integers and return some sort of content we can show.

 We need to complete the body property with something that combines multiple vertical and horizontal stacks to create as many cells as was requested. We don’t need to say what’s in each cell, because we can get that by calling our content closure with the appropriate row and column.
 */

struct CustomContainers_Previews: PreviewProvider {
    static var previews: some View {
        CustomContainers()
    }
}
