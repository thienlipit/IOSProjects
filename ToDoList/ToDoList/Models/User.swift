//
//  User.swift
//  ToDoList
//
//  Created by Tran Minh Thien on 28/6/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
