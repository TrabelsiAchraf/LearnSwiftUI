//
//  ResizingImageView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 11/08/2021.
//

import SwiftUI

struct ResizingImageView: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                Image("France")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width)
            }
        }
    }
}

struct ResizingImageView_Previews: PreviewProvider {
    static var previews: some View {
        ResizingImageView()
    }
}
