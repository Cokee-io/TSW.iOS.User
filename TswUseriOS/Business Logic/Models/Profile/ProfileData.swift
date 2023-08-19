//
//  ProfileData.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct ProfileData: Codable {
    let profile: SummaryProfileData
    let bestScoreCard: ScorecardShort?
    let recently5ScoreCardArray: Array<ProfileScoreCard>
    let recordAnalysisArray: Array<Float>
    let labelArray: Array<String>
    let driverDistanceArray: Array<Int>
    let girArray: Array<Int>
    let fairwayArray: Array<Int>
    let puttingCountArray: Array<Float>
    let matchRecordArray: Array<Int>

}
