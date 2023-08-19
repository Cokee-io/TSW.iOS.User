//
//  SignUpReq.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct SignupReq {
    let id: String = ""
    let pwd: String = ""
    let name: String
    let nickName: String = ""
    let email: String
    let phoneNumber: String
    let birthDate: String
    let nationalInfo: NationalInfo = .Native
    let gender: Gender = .Woman
    let oAuthProvider: OAuthProvider = .None
    let providerKey: String = ""
    let locationAgree: Bool = false
    let marketingAgree: Bool = false
}
