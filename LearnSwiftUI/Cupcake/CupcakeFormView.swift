//
//  CupcakeFormView.swift
//  LearnSwiftUI
//
//  Created by Achraf Trabelsi on 24/08/2021.
//

import SwiftUI

struct CupcakeFormView: View {
    
    @State private var username = ""
    @State private var email = ""
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            
            Section {
                Button("Create account") {
                    print("Creating account…")
                }
            }
            .disabled(disableForm)
        }
    }
    
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }
}

struct CupcakeFormView_Previews: PreviewProvider {
    static var previews: some View {
        CupcakeFormView()
    }
}
