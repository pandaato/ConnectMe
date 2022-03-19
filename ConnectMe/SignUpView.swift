//
//  SignUpView.swift
//  ConnectMe
//
//  Created by Peter Lin on 3/2/22.
//

import SwiftUI

struct SignUpView: View {
    @Binding var currentView: ViewType
    
    var body: some View {
        VStack {
            TitleText("Create new account")
            TextField("E-mail", text: .constant(""))
                .inputField
            SecureField("Password", text: .constant(""))
                .inputField
            Button("Sign Up", action: handleSignUp)
                .buttonStyle(BigButton())
                .background(Color("AggieBlue-80"))
                .clipShape(Capsule())
            Spacer()
            HStack {
                Text("Already have an account?")
                Button("Log in", action: logIn)
            }
            .font(.footnote)
        }
        .padding(.horizontal)
    }
    
    func handleSignUp() {
        
    }
    
    func logIn() {
        print("logging in")
        self.currentView = ViewType.login
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(currentView: .constant(.signup))
    }
}
