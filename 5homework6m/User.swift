//
//  User.swift
//  5homework6m
//
//  Created by mavluda on 2/7/23.
//

import Foundation

//User (Пользователь): Класс, представляющий пользователя, содержащий свойства, такие как имя пользователя и пароль.

class User {
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}

