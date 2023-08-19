//
//  ChangePasswordReq.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct ChangePasswordReq: Codable {
    let currentPwd: String
    let pwd: String
}
