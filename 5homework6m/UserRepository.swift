//
//  UserRepository.swift
//  5homework6m
//
//  Created by mavluda on 3/7/23.
//

protocol UserRepositoryProtocol {
    var users: [User] {get}
    func addUser(_ user: User)
    func getUserByUsername(_ username: String) -> User?
}

class UserRepository: UserRepositoryProtocol {
    internal var users: [User] = []
    
    func addUser(_ user: User) {
        users.append(user)
    }
    
    func getUserByUsername(_ username: String) -> User? {
        return users.first { $0.username == username }
    }
}
