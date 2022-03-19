//
//  HelperFunctions.swift
//  ConnectMe
//
//  Created by Peter Lin on 3/2/22.
//

import Foundation

// MARK: - String Functions
extension String {
    /* Checks if email is of valid format
     * CREDITS:
     * https://www.codebales.com/validating-email-in-swift-or-swiftUI
     * https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift
     */
    var isValidEmail: Bool {
        let name = "[A-Z0-9a-z]([A-Z0-9a-z._%+-]{0,30}[A-Z0-9a-z])?"
        let domain = "([A-Z0-9a-z]([A-Z0-9a-z-]{0,30}[A-Z0-9a-z])?\\.){1,5}"
        let emailRegEx = name + "@" + domain + "[A-Za-z]{2,8}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailPredicate.evaluate(with: self)
    }
    
    /* Checks if email entered is a UCDavis email
     * NOTE: even if returns true, might not be a valid UCDavis email
     */
    var isUCDavisEmail: Bool {
        return self.contains("@ucdavis.edu")
    }
}
