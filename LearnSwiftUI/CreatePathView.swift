//
//  CreatePathView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 13/08/2021.
//

import SwiftUI

struct CreatePathView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
        }
        .stroke(Color.blue,
                style: StrokeStyle(lineWidth: 10,
                                   lineCap: .round,
                                   lineJoin: .round)
        )

    }
}

struct CreatePathView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePathView()
    }
}
