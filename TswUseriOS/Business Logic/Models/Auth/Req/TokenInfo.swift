//
//  TokenInfo.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/01.
//

import Foundation

struct TokenInfo: Codable {
    let userId: String
    let userCode: Int
    let token: String
    let refreshToken: String
    let created: Date
    let expires: Date
}
