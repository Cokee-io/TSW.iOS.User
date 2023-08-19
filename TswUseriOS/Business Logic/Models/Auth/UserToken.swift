//
//  UserToken.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation


struct UserToken: Codable {
    let userId: String
    let userCode: Int
    let token: String
    let refreshToken: String
    let created: Date
    let expires: Date
}
