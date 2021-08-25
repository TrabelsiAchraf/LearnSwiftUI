//
//  CustomTransitionAnimationView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 09/08/2021.
//

import SwiftUI

struct CustomTransitionAnimationView: View {
    @State private var value = 0
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Tap Me")
            }

            Rectangle()
                .frame(width: 100, height: 100)
                .transition(.pivot)
                .animation(.default)
        }
    }
}

struct CustomTransitionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTransitionAnimationView()
    }
}

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content.rotationEffect(.degrees(amount), anchor: anchor).clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
            .modifier(
                active: CornerRotateModifier(amount: -90, anchor: .topLeading),
                identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
            )
    }
}
