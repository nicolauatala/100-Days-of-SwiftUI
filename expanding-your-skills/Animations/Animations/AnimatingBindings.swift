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

    var body: some View {
        print(animationAmount)

        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(
                Animation.easeInOut(duration: 1)
                    .repeatCount(3, autoreverses: true)
            ), in: 1...10)

            Spacer()

            Button("Tap Me") {
                self.animationAmount += 1
            }
            .padding(40)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}

struct AnimatingBindings_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingBindings()
    }
}
