//
//  Nasmo.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct Nasmo: Codable {
    let id : String
    let ccName: String
    let date: String
    let image: String
    let media: String
    let holeNo: Int
    let clubType: String
    let totalDistance: Int
    let clubSpeed: Int
    let ballSpeed: Int
    let ballFlightLaws: Int
    let nasmoList: Array<NasmoListItem>
}
