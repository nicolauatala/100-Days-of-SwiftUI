//
//  ContentView.swift
//  WeSplit
//
//  Created by Nicolau Atala Pelluzi on 29/01/20.
//  Copyright © 2020 Nicolau Atala Pelluzi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    
    var body: some View {

        // - Modifying program state

        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
