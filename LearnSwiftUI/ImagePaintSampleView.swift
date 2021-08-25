//
//  ImagePaintSampleView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 14/08/2021.
//

import SwiftUI

struct ImagePaintSampleView: View {
    var body: some View {
        VStack {
            
            Text("Hello World")
                .frame(width: 300, height: 200)
                .background(Image("France"))
            
            Text("Hello World")
                .frame(width: 300, height: 200)
                .border(ImagePaint(image: Image("France"), scale: 0.2), width: 30)
            
            Capsule()
                .strokeBorder(ImagePaint(image: Image("France"), scale: 0.1), lineWidth: 20)
                .frame(width: 300, height: 200)
        }
    }
}

struct ImagePaintSampleView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePaintSampleView()
    }
}
