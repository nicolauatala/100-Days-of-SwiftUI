//
//  ContentView.swift
//  BetterRest
//
//  Created by Nicolau Atala Pelluzi on 11/02/20.
//  Copyright © 2020 Nicolau Atala Pelluzi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wakeUp = Date()
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    var body: some View {
       NavigationView {
           VStack {
               Text("When do you want to wake up?")
                   .font(.headline)

               DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                   .labelsHidden()

               // more to come
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
