//
//  UserAuthenticator.swift
//  5homework6m
//
//  Created by mavluda on 2/7/23.
//

import Foundation

protocol UserAuthenticatorProtocol {
    func authenticate(username: String, password: String) -> Bool
    func printUserDetails(username: String)
}

class UserAuthenticator: UserAuthenticatorProtocol {
    private let authenticationService: AuthenticationServiceProtocol
    private let userPrinter: UserPrinterProtocol
    
    init(authenticationService: AuthenticationServiceProtocol, userPrinter: UserPrinterProtocol) {
        self.authenticationService = authenticationService
        self.userPrinter = userPrinter
    }
    
    func authenticate(username: String, password: String) -> Bool {
        return authenticationService.authenticateUser(username: username, password: password)
    }
    
    func printUserDetails(username: String) {
        userPrinter.printUsers(username)
    }
}
