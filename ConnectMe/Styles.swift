//
//  Styles.swift
//  ConnectMe
//
//  Created by Peter Lin on 3/1/22.
//

import SwiftUI

// MARK: - ButtonStyles
struct BigButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .font(.headline)
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
}

// MARK: - TitleText
struct TitleText: View {
    private let text: String

    init(_ text: String) {
        self.text = text
    }

    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("Black-90"))
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .padding(.vertical)
            .padding(.vertical)
    }
}

// MARK: - inputField
extension View {
    var inputField: some View {
        self
            .padding()
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .background(Color("Black-10"))
            .padding(.top)
    }
}

// MARK: - TESTS
struct Styles: View {
    var body: some View {
        Button("Hello", action: {
            
        })
            .buttonStyle(BigButton())
            .background(Color("AggieGold-100"))
            .clipShape(Capsule())
        
        TitleText(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .inputField
    }
}

struct Styles_Previews: PreviewProvider {
    static var previews: some View {
        Styles()
    }
}
