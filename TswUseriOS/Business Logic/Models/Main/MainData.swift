//
//  MainData.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct MainData: Codable {
    let profile: SimpleProfileData
    let recentlyNasmoList: MainNasmoList?
    let recentlyScoreCard: MainScoreCard
    let recently5ScoreCards: Array<ScorecardShort>
    let shops: Array<ShopShort>
}
