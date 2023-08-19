//
//  SocialLoginReq.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct SocialLoginReq: Codable {
    let oAuthProvider: OAuthProvider
    let accessToken: String
}
