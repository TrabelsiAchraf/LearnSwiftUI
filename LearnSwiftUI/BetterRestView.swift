//
//  BetterRestView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 13/07/2021.
//

import SwiftUI

struct BetterRestView: View {
    
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date()
    
    let now = Date()
    let tomorrow = Date().addingTimeInterval(86400)
    
    var body: some View {
        NavigationView {
            VStack {
                Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                    Text("\(sleepAmount, specifier: "%g") hours")
                }
                DatePicker("Please enter a date", selection: $wakeUp, in: now...tomorrow)
                    .labelsHidden()
            }
            .navigationBarTitle("BetterRest")
            .navigationBarItems(leading: Button("Tap me", action: calculateBedtime))
        }
    }
    
    func calculateBedtime() {
    }
}

struct BetterRestView_Previews: PreviewProvider {
    static var previews: some View {
        BetterRestView()
    }
}

