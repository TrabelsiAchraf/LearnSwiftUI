//
//  SheetSampleView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 09/08/2021.
//

import SwiftUI

struct SheetSampleView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "@twostraws")
        }
    }
}

struct SecondView: View {
    
    var name: String
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Hello, \(name)!")
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct SheetSampleView_Previews: PreviewProvider {
    static var previews: some View {
        SheetSampleView()
    }
}
