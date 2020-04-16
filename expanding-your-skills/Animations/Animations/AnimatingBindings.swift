//
//  AnimatingBindings.swift
//  Animations
//
//  Created by Nicolau Atala on 02/03/20.
//  Copyright © 2020 Nicolau Atala. All rights reserved.
//

import SwiftUI

struct AnimatingBindings: View {
    @State private var animationAmount: CGFloat = 1
    @State private var animationRotation = 0.0

		var body: some View {

        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(
                Animation.easeInOut(duration: 1)
                    .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            .padding(60)

            Button("Tap Me") {
//                withAnimation {
//                    self.animationRotation += 45
//                }
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)){
                    self.animationRotation += 360
                }
            }
            .padding(40)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
            .rotation3DEffect(.degrees(animationRotation), axis: (x: 0, y: 1, z: 0))
        }
        
    }
}

struct AnimatingBindings_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingBindings()
    }
}
