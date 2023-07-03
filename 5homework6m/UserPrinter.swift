//
//  UserPrinter.swift
//  5homework6m
//
//  Created by mavluda on 3/7/23.
//

import Foundation

protocol UserPrinterProtocol {
    func printUsers(_ username: String)
}

class UserPrinter: UserPrinterProtocol {
    private let userRepository: UserRepositoryProtocol
    
    init(userRepository: UserRepositoryProtocol) {
        self.userRepository = userRepository
    }
    
    func printUsers(_ username: String) {
        guard let user = userRepository.getUserByUsername(username) else {
            print("No user found")
            return
        }
        
        print("Имя пользователя: \(user.username)")
        print("Пароль: \(user.password)")
        print("---")
    }
}
