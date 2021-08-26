//
//  SizeClassesView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 26/08/2021.
//

import SwiftUI

struct SizeClassesView: View {
    
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        if sizeClass == .compact {
            return AnyView(VStack {
                Text("Active size class:")
                Text("COMPACT")
            }.font(.largeTitle))
        } else {
            return AnyView(HStack {
                Text("Active size class:")
                Text("REGULAR")
            }.font(.largeTitle))
        }
    }
}

struct SizeClassesView_Previews: PreviewProvider {
    static var previews: some View {
        SizeClassesView()
    }
}
