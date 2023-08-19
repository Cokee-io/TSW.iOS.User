//
//  ScorecardListReq.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/20.
//

import Foundation

struct ScorecardListReq: Codable {
    let pageNum: Int
    let year: Int
    let isEighteenHole: Bool
}
