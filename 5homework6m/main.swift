//
//  main.swift
//  5homework6m
//
//  Created by mavluda on 2/7/23.
//

import Foundation

let userRepository = UserRepository()
let userPrinter = UserPrinter(userRepository: userRepository)
let authenticationService = AuthenticationService()
let userAuthenticator = UserAuthenticator(authenticationService: authenticationService, userPrinter: userPrinter)

let user1 = User(username: "user1", password: "password1")
let user2 = User(username: "user2", password: "password2")

userRepository.addUser(user1)
userRepository.addUser(user2)
authenticationService.registerUser(user1)
authenticationService.registerUser(user2)

let username = "user1"
let password = "password1"
let isAuthenticated = userAuthenticator.authenticate(username: username, password: password)

if isAuthenticated {
    print("Аутентификация успешна для пользователя: \(username)")
    print("Информация о пользователе:")
    userAuthenticator.printUserDetails(username: username)
} else {
    print("Аутентификация не удалась для пользователя: \(username)")
}
