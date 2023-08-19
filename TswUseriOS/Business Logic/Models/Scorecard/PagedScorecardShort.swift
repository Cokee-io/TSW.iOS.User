//
//  PagedScorecardShort.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation


struct PagedScorecardShort: Codable {
    let letues: Array<ScorecardShort>
    let currentPageNum: Int
    let nextPageNum: Int
    let totalPageNum: Int
}
