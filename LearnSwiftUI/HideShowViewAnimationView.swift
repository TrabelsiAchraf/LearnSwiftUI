//
//  HideShowViewAnimation.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 08/08/2021.
//

import SwiftUI

struct HideShowViewAnimationView: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    self.isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
            }
        }
    }
}

struct HideShowViewAnimation_Previews: PreviewProvider {
    static var previews: some View {
        HideShowViewAnimationView()
    }
}
