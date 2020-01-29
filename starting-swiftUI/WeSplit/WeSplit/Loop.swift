//
//  Loop.swift
//  WeSplit
//
//  Created by Nicolau Atala Pelluzi on 29/01/20.
//  Copyright © 2020 Nicolau Atala Pelluzi. All rights reserved.
//

import SwiftUI

struct LoopView: View {
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = 0
    
    var body: some View {
        
        
        /*
         
            Form {
                ForEach(0 ..< 100) { number in
                    Text("Row \(number)")
                }
            }

            Because ForEach passes in a closure, we can use shorthand syntax for the parameter name, like this:

            Form {
                ForEach(0 ..< 100) {
                    Text("Row \($0)")
                }
            }
        */

        VStack {
            Picker("Select your student", selection: $selectedStudent) {
                ForEach(0 ..< students.count) {
                    Text(self.students[$0])
                }
            }
            Text("You chose: Student # \(students[selectedStudent])")
        }
    }
}


struct LoopView_Previews: PreviewProvider {
    static var previews: some View {
        LoopView()
    }
}
