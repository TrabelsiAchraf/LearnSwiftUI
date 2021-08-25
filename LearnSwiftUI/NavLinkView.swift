//
//  NavLinkView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 13/08/2021.
//

import SwiftUI

struct NavLinkView: View {
    var body: some View {
        NavigationView {
            List(0..<100) { row in
                NavigationLink(destination: Text("Detail \(row)")) {
                    Text("Row \(row)")
                }
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct NavLinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavLinkView()
    }
}
