//
//  NasmoListItem.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct NasmoListItem: Codable {
    let id : String
    let date: String
    let image: String
    let clubType: String
    let totalDistance: Int
    let ballFlightLaws: Int
}
