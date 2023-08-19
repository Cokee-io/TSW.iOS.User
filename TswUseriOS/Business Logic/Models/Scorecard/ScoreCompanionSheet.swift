//
//  ScoreCompanionSheet.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/20.
//

import Foundation

struct ScoreCompanionSheet: Codable {
    let id: String
    let ccName: String?
    let avgPuttingCount: Int
    let gir: Int
    let fairway: Int
    let ballSpeed: Int
    let avgDriverDistance: Int
    let teeShotLaws: Int
    let personnel: Int
    let totalScore: Int
    let endScore: Int
    let endDate: String
    let isEighteenHole: Bool
}
