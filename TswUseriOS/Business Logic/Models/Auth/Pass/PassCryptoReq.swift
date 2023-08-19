//
//  PassCryptoReq.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

enum MobileCoType: String, Codable {
    case SKT = "S"
    case KT = "K"
    case LG = "L"
}

struct PassCryptReq: Codable {
    let receiveData: String
    let mobilececo: MobileCoType
}
