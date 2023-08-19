//
//  NaverUserData.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct NaverUserData: Codable {
    let id: String
    let name: String
    let email: String
    let gender: NaverGender
    let birthDay: String
    let birthYear: String
    let mobile: String
}
