//
//  ChatsView.swift
//  ConnectMe
//
//  Created by Peter Lin on 3/8/22.
//

import SwiftUI

struct ChatsView: View {
    var body: some View {
        ZStack {
            Color("AggieBlue-50")
            Text("Chats!")
        }
        .padding(.bottom)
    }
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
    }
}
