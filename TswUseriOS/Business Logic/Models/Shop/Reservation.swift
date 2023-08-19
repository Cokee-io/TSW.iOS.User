//
//  Reservation.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/20.
//

import Foundation

struct Reservation: Codable {
    let id: String?
    let shopCode: Int
    // let revStatus: Int
    let underName: String
    let revDate: String
    let revTime: String
    let revHole: Int
    let personnel: Int
    let userId: String
    let phone: String
    let memo: String
}
