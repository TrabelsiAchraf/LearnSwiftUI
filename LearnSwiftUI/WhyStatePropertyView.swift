//
//  WhyStatePropertyView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 09/08/2021.
//

import SwiftUI

struct WhyStatePropertyView: View {
    
    @ObservedObject var user = People()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName).")
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
    }
}

struct WhyStatePropertyView_Previews: PreviewProvider {
    static var previews: some View {
        WhyStatePropertyView()
    }
}

class People: ObservableObject {
    @Published var firstName = "Bilbo"
     var lastName = "Baggins"
}
