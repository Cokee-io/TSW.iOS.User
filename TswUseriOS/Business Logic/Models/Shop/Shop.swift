//
//  Shop.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct Shop: Codable {
    let id: String
    let so: String
    let name: String
    let shopBranch: String
    let shopCode: Int
    let ownerName: String
    let contacts: String
    let zipCode: String
    let address: String
    let phone: String
    let roomNum: Int
    let weekdayStartTime: String
    let weekdayEndTime: String
    let weekendStartTime: String
    let weekendEndTime: String
    let weekdayMorningRates: Int
    let weekdayAfternoonRates: Int
    let weekendMorningRates: Int
    let weekendAfternoonRates: Int
    let dayOff: String
    let parkingGuidance: String
    let images: Array<String>
    let location: ShopLatLng
}
