//
//  PagedScorecard.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct PagedScorecard: Codable {
    let currentPage: Int
    let nextPage: Int
    let totalPage: Int
    let scorecards: Array<Scorecard>
}
