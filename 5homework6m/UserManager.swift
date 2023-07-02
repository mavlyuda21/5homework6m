//
//  UserManager.swift
//  5homework6m
//
//  Created by mavluda on 2/7/23.
//

//UserManager (Менеджер пользователей): Класс, отвечающий за управление пользователями, такие как добавление пользователей и вывод информации о них.

protocol UserManagerProtocol {
    func addUser(_ user: User)
    func getUserByUsername(_ username: String) -> User?
    func printUsers()
}


class UserManager: UserManagerProtocol {
    private var users: [User] = []
    
    func addUser(_ user: User) {
        users.append(user)
    }
    
    func getUserByUsername(_ username: String) -> User? {
        return users.first { $0.username == username }
    }
    
    func printUsers() {
        for user in users {
            print("Имя пользователя: \(user.username)")
            print("Пароль: \(user.password)")
            print("---")
        }
    }
}
