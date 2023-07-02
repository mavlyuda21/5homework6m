//
//  UserAuthenticator.swift
//  5homework6m
//
//  Created by mavluda on 2/7/23.
//

import Foundation

//UserAuthenticator (Аутентификатор пользователей): Класс, отвечающий за аутентификацию пользователей и вывод информации о них.

protocol UserAuthenticatorProtocol {
    func authenticate(username: String, password: String) -> Bool
    func printUserDetails(username: String)
}

class UserAuthenticator: UserAuthenticatorProtocol {
    private let authenticationService: AuthenticationServiceProtocol
    private let userManager: UserManagerProtocol
    
    init(authenticationService: AuthenticationServiceProtocol, userManager: UserManagerProtocol) {
        self.authenticationService = authenticationService
        self.userManager = userManager
    }
    
    func authenticate(username: String, password: String) -> Bool {
        return authenticationService.authenticateUser(username: username, password: password)
    }
    
    func printUserDetails(username: String) {
        if let user = userManager.getUserByUsername(username) {
            print("Имя пользователя: \(user.username)")
            print("Пароль: \(user.password)")
            print("---")
        }
    }
}
