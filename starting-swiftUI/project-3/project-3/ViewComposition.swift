//
//  ViewComposition.swift
//  project-3
//
//  Created by Nicolau Atala Pelluzi on 10/02/20.
//  Copyright © 2020 Nicolau Atala Pelluzi. All rights reserved.
//

import SwiftUI

struct ViewComposition: View {
    
    /*
     SwiftUI lets us break complex views down into smaller views without incurring much if any performance impact. This means that we can split up one large view into multiple smaller views, and SwiftUI takes care of reassembling them for us.
     */
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
            CapsuleText(text: "Second")
        }
    }
}

struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Capsule())
    }
}


struct ViewComposition_Previews: PreviewProvider {
    static var previews: some View {
        ViewComposition()
    }
}
