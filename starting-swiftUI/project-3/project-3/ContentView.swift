//
//  ContentView.swift
//  project-3
//
//  Created by Nicolau Atala Pelluzi on 10/02/20.
//  Copyright © 2020 Nicolau Atala Pelluzi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    /*
     Let me say this as clearly as I can: for SwiftUI developers, there is nothing behind our view. You shouldn’t try to make that white space turn red with weird hacks or workarounds, and you certainly shouldn’t try to reach outside of SwiftUI to do it.

     Now, right now at least there is something behind our content view called a UIHostingController: it is the bridge between UIKit (Apple’s original iOS UI framework) and SwiftUI. However, if you start trying to modify that you’ll find that your code no longer works on Apple’s other platforms, and in fact might stop working entirely on iOS at some point in the future.

     Instead, you should try to get into the mindset that there is nothing behind our view – that what you see is all we have.

     Once you’re in that mindset, the correct solution is to make the text view take up more space; to allow it to fill the screen rather than being sized precisely around its content. We can do that by using the frame() modifier, passing in .infinity for both its maximum width and maximum height.
     
     Using maxWidth and maxHeight is different from using width and height – we’re not saying the text view must take up all that space, only that it can. If you have other views around, SwiftUI will make sure they all get enough space.

     By default your view won’t leave the safe area, but you can change that by using the edgesIgnoringSafeArea() modifier like this:
     */
    
    /*
    var body: some View {
        Text("Hello World")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)

    }
     */
    
    // - Conditional modifiers

    /*
     It’s common to want modifiers that apply only when a certain condition is met, and in SwiftUI the easiest way to do that is with the ternary operator.

     As a reminder, to use the ternary operator you write your condition first, then a question mark and what should be used if the condition is true, then a colon followed by what should be used if the condition is false.

     For example, if you had a property that could be either true or false, you could use that to control the foreground color of a button like this:
     */
    
    /*
    @State private var useRedText = true

    var body: some View {
        VStack {
            Button("Hello World") {
                // flip the Boolean between true and false
                self.useRedText.toggle()
            }
            .foregroundColor(useRedText ? .red : .blue)
            
            /*
             if self.useRedText {
                    return Text("Hello World")
                } else {
                    return Text("Hello World")
                        .background(Color.red)
                }
             */
        }
    }
     */
    
    // - Environment modifiers
    // Many modifiers can be applied to containers, which allows us to apply the same modifier to many views at the same time.

    /*
    var body: some View {
        VStack {
            Text("Gryffindor")
                .blur(radius: 0)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .blur(radius: 1)
    }
     */
    
    // - Views as properties
    /*
     There are lots of ways to make it easier to use complex view hierarchies in SwiftUI, and one option is to use properties – to create a view as a property of your own view, then use that property inside your layouts.

     For example, we could create two text views like this as properties, then use them inside a VStack:
     */
//    let motto1 = Text("Draco dormiens")
//    let motto2 = Text("nunquam titillandus")
//
//    var body: some View {
//        VStack {
//            motto1
//                .foregroundColor(.red)
//            motto2
//                .foregroundColor(.blue)
//        }
//    }
    
    // - View composition
    // SwiftUI lets us break complex views down into smaller views without incurring much if any performance impact. This means that we can split up one large view into multiple smaller views, and SwiftUI takes care of reassembling them for us.

    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
            CapsuleText(text: "Second")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
