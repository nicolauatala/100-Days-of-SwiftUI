//
//  BindingState.swift
//  WeSplit
//
//  Created by Nicolau Atala Pelluzi on 29/01/20.
//  Copyright © 2020 Nicolau Atala Pelluzi. All rights reserved.
//

import SwiftUI

struct BindingState: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your namne", text: $name)
            Text("Your name is \(name)")
        }
    }
}

struct BindingState_Previews: PreviewProvider {
    static var previews: some View {
        BindingState()
    }
}
