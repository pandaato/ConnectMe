//
//  LogInView.swift
//  ConnectMe
//
//  Created by Peter Lin on 3/2/22.
//

import SwiftUI

struct LogInView: View {
    @Binding var currentView: ViewType
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            TitleText("Sign In")
            TextField("E-mail", text: $email)
                .inputField
            SecureField("Password", text: $password)
                .inputField
            Button("Forgot Password?", action: resetPassword)
                .padding(.bottom)
                .font(.caption)
                .frame(maxWidth: .infinity, alignment: .topTrailing)
            Button("Log In", action: handleLogIn)
                .buttonStyle(BigButton())
                .background(Color("AggieBlue-80"))
                .clipShape(Capsule())
            Spacer()
            HStack {
                Text("Don't have an account?")
                Button("Sign up", action: signUp)
            }
            .font(.footnote)
        }
        .padding(.horizontal)
    }
    
    func resetPassword() {
        print("resetting password")
    }
    
    func handleLogIn() {
        //MARK: - TODO
        self.currentView = ViewType.navigation
    }
    
    func signUp() {
        print("signing up")
        self.currentView = ViewType.signup
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView(currentView: .constant(.login))
    }
}
