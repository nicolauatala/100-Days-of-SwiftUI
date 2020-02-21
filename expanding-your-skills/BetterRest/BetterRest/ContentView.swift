//
//  ContentView.swift
//  BetterRest
//
//  Created by Nicolau Atala Pelluzi on 11/02/20.
//  Copyright © 2020 Nicolau Atala Pelluzi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date()
    }
	
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
           Form {
               Text("When do you want to wake up?")
                   .font(.headline)

               DatePicker("Please enter a time",
                          selection: $wakeUp,
                          displayedComponents:
                            .hourAndMinute)
                            .labelsHidden()
                            .datePickerStyle(WheelDatePickerStyle())

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
            .alert(isPresented: $showingAlert) {
                Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
    
    func calculateBedTime() {
        let model = SleepCalculator()
        
        let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
        let hour = (components.hour ?? 0) * 60 * 60
        let minute = (components.minute ?? 0) * 60

        do {
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))

            let sleepTime = wakeUp - prediction.actualSleep
            
            let formatter = DateFormatter()
            formatter.timeStyle = .short

            alertMessage = formatter.string(from: sleepTime)
            alertTitle = "Your ideal bedtime is…"
            
        } catch {
            // something went wrong!
            
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your bedtime."
        }
        
        showingAlert = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
