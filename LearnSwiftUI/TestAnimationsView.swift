//
//  TestAnimationsView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 18/07/2021.
//

import SwiftUI

struct TestAnimationsView: View {
    
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button("Tap Me") {
//            animationAmount += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(
                    Animation.easeOut(duration: 1)
                        .repeatForever(autoreverses: false)
                )
        )
        .onAppear {
            self.animationAmount = 2
        }
    }
}

struct TestAnimationsView_Previews: PreviewProvider {
    static var previews: some View {
        TestAnimationsView()
    }
}
