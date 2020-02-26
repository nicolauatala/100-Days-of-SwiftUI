//
//  ContentView.swift
//  WordScramble
//
//  Created by Nicolau Atala on 26/02/20.
//  Copyright © 2020 Nicolau Atala. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        
        /*
         - another way to create a list
         
         List(0..<5) {
             Text("Dynamic row \($0)")
         }
         */
        List {
            ForEach(people, id: \.self) {
                Text($0)
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
