//
//  ScrollViewSampleView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 11/08/2021.
//

import SwiftUI

struct ScrollViewSampleView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 10) {
                ForEach(0..<100) {
                    Text("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ScrollViewSampleView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewSampleView()
    }
}
