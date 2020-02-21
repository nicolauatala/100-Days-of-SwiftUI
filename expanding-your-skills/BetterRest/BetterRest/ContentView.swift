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
	
	/*
	let now = Date()
	let tomorrow = Date().addingTimeInterval(86400)
	let range = now ... tomorrow
	
	
	var components = DateComponents()
	components.hour = 8
	components.minute = 0
	let date = Calendar.current.date(from: components) ?? Date()


	let formatter = DateFormatter()
	formatter.timeStyle = .short
	let dateString = formatter.string(from: Date())
	*/
    
    var body: some View {
       NavigationView {
           VStack {
               Text("When do you want to wake up?")
                   .font(.headline)

               DatePicker("Please enter a time",
                          selection: $wakeUp,
                          displayedComponents:
                            .hourAndMinute)
                            .labelsHidden()

				Text("Desired amount of sleep")
					.font(.headline)
				
				Stepper(
                    value: $sleepAmount, in: 4...12, step: 0.25
                ) {
					Text("\(sleepAmount, specifier: "%g") hours")
				}
				
				Text("Daily coffee intake")
					.font(.headline)
				
				Stepper(
                    value: $coffeeAmount, in: 1...20
                ) {
                    if coffeeAmount == 1 {
                        Text("1 cup")
                    } else {
                        Text("\(coffeeAmount) cups")
                    }
				}
            }
			.navigationBarTitle("BetterRest")
			.navigationBarItems(trailing:
                Button("Calculate") {
                    self.calculateBedTime()
                }
			)
        }
    }
    
    func calculateBedTime() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
