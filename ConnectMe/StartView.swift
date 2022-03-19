//
//  StartView.swift
//  ConnectMe
//
//  Created by Peter Lin on 3/1/22.
//

import SwiftUI

struct StartView: View {
    @Binding var currentView: ViewType
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Text("Welcome to ConnectMe")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color("Black-90"))
                .padding()
            Spacer()
            Button("Log In", action: logIn)
                .buttonStyle(BigButton())
                .background(Color("AggieBlue-80"))
                .clipShape(Capsule())
            Button("Sign Up", action: signUp)
                .buttonStyle(BigButton())
                .background(Color("Black-50"))
                .clipShape(Capsule())
            Spacer()
        }
        .padding(.horizontal)
        .padding(.horizontal)
    }
    
    func logIn() {
        print("logging in")
        self.currentView = ViewType.login
    }

    func signUp() {
        print("signing up")
        self.currentView = ViewType.signup
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(currentView: .constant(.start))
    }
}
