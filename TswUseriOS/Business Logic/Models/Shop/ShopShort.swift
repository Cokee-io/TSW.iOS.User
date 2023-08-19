//
//  ShopShort.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct ShopShort: Codable {
    let shopCode: Int
    let phone: String
    let address: String
    let shopBranch: String
    let roomNum: Int
    let images: Array<String>
    let location: ShopLatLng
}
