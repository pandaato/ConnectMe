//
//  NotificationsView.swift
//  ConnectMe
//
//  Created by Peter Lin on 3/8/22.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ZStack {
            Color("Black-50")
            Text("Notifications!")
        }
        .padding(.bottom)
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
