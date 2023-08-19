//
//  ChangePwByPhoneReq.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct ChangePwByPhoneReq: Codable {
    let userId: String
    let token: String
    let newPwd: String
}
