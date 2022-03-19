//
//  ContentView.swift
//  ConnectMe
//
//  Created by Peter Lin on 3/1/22.
//

import SwiftUI

enum ViewType {
    case start
    case login
    case signup
    case navigation
}

struct ContentView: View {
    @State var currentView = ViewType.start
    
    var body: some View {
        if currentView == .start {
            StartView(currentView: $currentView)
        } else if currentView == .login {
            LogInView(currentView: $currentView)
        } else if currentView == .signup {
            SignUpView(currentView: $currentView)
        } else if currentView == .navigation {
            NavigationView(currentView: $currentView)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
