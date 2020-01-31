//
//  ReadingTextUser.swift
//  WeSplit
//
//  Created by Nicolau Atala on 30/01/20.
//  Copyright © 2020 Nicolau Atala Pelluzi. All rights reserved.
//

import SwiftUI

struct ReadingTextUser: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]

    var body: some View {
        Form {
            Section {
                TextField("Amount", text: $checkAmount)
                .keyboardType(.decimalPad)
            }
    
            Section {
                Text("$\(checkAmount)")
            }
        }
    }
}



