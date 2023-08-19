//
//  SocialLoginRes.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct SocialLoginRes: Codable {
    let tokenData: UserToken?
    let isRegister: Bool
    let naverOAuthUserData: NaverUserData
}
