//
//  SummaryProfileData.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct SummaryProfileData: Codable {
    let code: Int
    let userName: String
    let nickName: String
    let imageUrl: String
    let handicap: Int?
    let bestScore: Int
    let rank: Int
    let grade: Int
    let currentGrade: Int
    let currentGradeImg: String
    let futureGrade: Int
    let futureGradeImg: String
    let gradeRate: Float
}
