//
//  AnimateGestureView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 08/08/2021.
//

import SwiftUI

struct AnimateGestureView: View {
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { self.dragAmount = $0.translation }
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            self.dragAmount = .zero
                        }
                }
            )
    }
}

struct AnimateGestureView_Previews: PreviewProvider {
    static var previews: some View {
        AnimateGestureView()
    }
}
