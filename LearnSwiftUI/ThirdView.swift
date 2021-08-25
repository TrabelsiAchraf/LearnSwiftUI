//
//  ThirdView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 04/07/2021.
//

import SwiftUI

struct ThirdView: View {
    let people = ["Achraf", "Safa"]
    
    var body: some View {
        List {
            Section(header: Text("Section 1")) {
                Text("Static row 1")
                Text("Static row 2")
            }

            Section(header: Text("Section 2")) {
                ForEach(0..<5) {
                    Text("Dynamic row \($0)")
                }
            }

            Section(header: Text("Section 3")) {
                Text("Static row 3")
                Text("Static row 4")
            }
            
            ForEach(people, id: \.self) {
                Text("Dynamic row \($0)")
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}


