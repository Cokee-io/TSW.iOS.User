//
//  ApiResponse.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation


struct ApiReponse<T>: Codable where T: Codable {
    let status: String
    let code: String
    let msg: String
    let data: T
}
