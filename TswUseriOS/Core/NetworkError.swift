//
//  NetworkError.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/01.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case BadRequest
    case Unauthorize
    case Unauthenticate
}
