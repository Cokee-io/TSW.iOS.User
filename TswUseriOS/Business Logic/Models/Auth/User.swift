//
//  User.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/01.
//

import Foundation

struct User: Codable, Identifiable {
    let id: String
    let code: Int
    let name: String
    let nickName: String
    let profileImg: String
    let phoneNumber: String
    let email: String
    let gender: Gender
    let age: Int
    let language: Language
}
