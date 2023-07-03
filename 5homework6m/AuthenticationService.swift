//
//  AuthenticationService.swift
//  5homework6m
//
//  Created by mavluda on 2/7/23.
//

import Foundation

protocol AuthenticationServiceProtocol {
    func registerUser(_ user: User)
    func authenticateUser(username: String, password: String) -> Bool
}

class AuthenticationService: AuthenticationServiceProtocol {
    private var registeredUsers: [User] = []
    
    func registerUser(_ user: User) {
        registeredUsers.append(user)
    }
    
    func authenticateUser(username: String, password: String) -> Bool {
        for user in registeredUsers {
            if user.username == username && user.password == password {
                return true
            }
        }
        return false
    }
}


