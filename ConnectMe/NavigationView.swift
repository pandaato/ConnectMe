//
//  NavigationView.swift
//  ConnectMe
//
//  Created by Peter Lin on 3/2/22.
//

import SwiftUI

struct NavigationView: View {
    @Binding var currentView: ViewType
    
    var body: some View {
        TabView {
            FindFriendsView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Find Friends")
                }
            ChatsView()
                .tabItem {
                    Image(systemName: "message")
                    Text("Chats")
                }
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notifications")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(currentView: .constant(.navigation))
    }
}
