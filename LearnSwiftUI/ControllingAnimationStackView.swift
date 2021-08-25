//
//  ControllingAnimationStackView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 08/08/2021.
//

import SwiftUI

struct ControllingAnimationStackView: View {
    
    @State private var enabled = false

    var body: some View {
        Button("Tap Me") {
            self.enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? Color.blue : Color.red)
        .animation(.default)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1))
    }
}

struct ControllingAnimationStackView_Previews: PreviewProvider {
    static var previews: some View {
        ControllingAnimationStackView()
    }
}
