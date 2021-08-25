//
//  OnDeteletSampleView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 09/08/2021.
//

import SwiftUI

struct OnDeteletSampleView: View {
    
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("\($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                Button("Add Number") {
                    self.numbers.append(self.currentNumber)
                    self.currentNumber += 1
                }
            }
            .navigationBarItems(leading: EditButton())
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

struct OnDeteletSampleView_Previews: PreviewProvider {
    static var previews: some View {
        OnDeteletSampleView()
    }
}
