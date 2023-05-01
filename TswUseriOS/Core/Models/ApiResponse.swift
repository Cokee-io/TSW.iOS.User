//
//  ApiResponse.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/02.
//

import Foundation

struct ApiResponse<T>: Codable where T: Codable {
    let status: String
    let code: String
    let msg: String
    let data: T
}
