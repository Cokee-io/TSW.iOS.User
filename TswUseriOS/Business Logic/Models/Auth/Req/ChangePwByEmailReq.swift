//
//  ChangePwByEmailReq.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct ChangePwByEmailReq: Codable {
    let name: String
    let email: String
    let phone: String
}
