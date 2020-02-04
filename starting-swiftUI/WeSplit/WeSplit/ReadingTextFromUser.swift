//
//  ReadingTextFromUser.swift
//  WeSplit
//
//  Created by Nicolau Atala Pelluzi on 04/02/20.
//  Copyright © 2020 Nicolau Atala Pelluzi. All rights reserved.
//

import SwiftUI

struct ReadingTextFromUser: View {
    
    /*
     
     Hopefully already you can see that means we need to add three @State properties, because there are three pieces of data we’re expecting users to enter into our app.

     So, start by adding these three properties to our ContentView struct:
     */
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10,15,20,25,0]
    
    var body: some View {
        NavigationView {
             Form {
                
                /*
                 One of the great things about the @State property wrapper is that it automatically watches for changes, and when something happens it will automatically re-invoke the body property. That’s a fancy way of saying it will reload your UI to reflect the changed state, and it’s a fundamental feature of the way SwiftUI works.

                 To demonstrate this, add a second section with a text view showing the value of checkAmount, like this:
                 */
                 Section {
                     TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                 }

                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                /*
                 
                 This synchronization happens because:

                 Our text field has a two-way binding to the checkAmount property.
                 The checkAmount property is marked with @State, which automatically watches for changes in the value.
                 When an @State property changes SwiftUI will re-invoke the body property (i.e., reload our UI)
                 Therefore the text view will get the updated value of checkAmount.
                 The final project won’t show checkAmount in that text view, but it’s good enough for now. Before we move on, though, I want to address one important problem: when you tap to enter text into our text field, users see a regular alphabetical keyboard. Sure, they can tap a button on the keyboard to get to the numbers screen, but it’s annoying and and not really necessary.
                 */
                 Section {
                     Text("$\(checkAmount)")
                        
                 }
             }
            .navigationBarTitle("WeSplit")
        }
    }
}

struct ReadingTextFromUser_Previews: PreviewProvider {
    static var previews: some View {
        ReadingTextFromUser()
    }
}
