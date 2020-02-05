//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Nicolau Atala Pelluzi on 05/02/20.
//  Copyright © 2020 Nicolau Atala Pelluzi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    /*
     When we return some View for our body, we mean “one specific type that conforms to the View protocol. That might be a navigation view, a form, a text view, a picker, or something else entirely, but it’s always exactly one thing that conforms to the View protocol.

     If we want to return multiple things we have various options, but three are particularly useful. They are HStack, VStack, and ZStack, which handle horizontal, vertical, and, er, zepth.


     */
    var body: some View {
        VStack(spacing: 20) {
//            Color.red.edgesIgnoringSafeArea(.all)
            Text("Hello World")
//            Color(red: 1, green: 0.8, blue: 0)

//            Color.red.frame(width: 200, height: 200)
            Text("This is inside a stack")
            .background(Color.yellow)
            .padding(12)
            HStack(spacing: 20) {
                Text("Hello World")
                Text("This is inside a stack")
                Text("Another")
            }
            .background(Color.red)
//            ZStack(alignment: .top) {
//                Text("Hello World")
//                Text("This is inside a stack")
//            }
            
            /*
             - Gradient
             SwiftUI gives us three kinds of gradients to work with, and like colors they are also views that can be drawn in our UI.

             Gradients are made up of several components:

             - An array of colors to show
             - Size and direction information
             - The type of gradient to use
             */
            VStack {
                LinearGradient(gradient: Gradient(colors: [.red, .black]), startPoint: .zero, endPoint: .bottom)
                RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
                AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)

                
            }
            
            /*
             - Buttons and Images
             
             */
            VStack {
                Button(action: {
                    print("Edit button was tapped")
                }) {
                    HStack(spacing: 10) {
                        Image(systemName: "pencil")
                        Text("Edit")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
