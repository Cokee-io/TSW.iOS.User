//
//  SocialUserData.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct SocialUserData: Codable { 
    var id: String = ""
    var name: String = ""
    let email: String
    var gender: Gender = .Man
    var birthDate: String = ""
    var mobile: String = ""
    var oAuthProvider: OAuthProvider = .Google
    let oAUthProviderKey: String
}
