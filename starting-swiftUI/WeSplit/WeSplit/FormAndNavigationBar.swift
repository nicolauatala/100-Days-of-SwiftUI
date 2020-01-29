//
//  FormAndNavigationBar.swift
//  WeSplit
//
//  Created by Nicolau Atala Pelluzi on 29/01/20.
//  Copyright © 2020 Nicolau Atala Pelluzi. All rights reserved.
//

import SwiftUI

struct FormAndNavigationBar: View {
    
   // - Creating a form and Adding a navigation bar

   var body: some View {
       NavigationView {
           Form {
               Section {
                   Text("Hello World")
               }

               Group {
                   Text("Hello World")
                   Text("Hello World")
                   Text("Hello World")
                   Text("Hello World")
                   Text("Hello World")
               }
           }
           //.navigationBarTitle("SwiftUi", displayMode: .inline)
           .navigationBarTitle("SwiftUi")
       }
   }
}

//struct FormAndNavigationBar_Previews: PreviewProvider {
//    static var previews: some View {
//        FormAndNavigationBar()
//    }
//}
