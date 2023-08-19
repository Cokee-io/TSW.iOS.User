//
//  PassCryptoRes.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation


struct PassCryptoRes: Codable {
    let tokenVersionId: String
    let encData: String
    let integrityValue: String
}
