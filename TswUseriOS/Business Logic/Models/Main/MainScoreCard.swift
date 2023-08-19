//
//  MainScoreCard.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct MainScoreCard: Codable {
    let id: String
    let ccName: String?
    let avgPuttingCount: Float
    let totalScore: Int
    let endScore: Int
    let gir: Int
    let faireway: Int
    let ballSpeed: Int
    let avgDriverDistance: Int
    let teesShortLaws: Int
}
