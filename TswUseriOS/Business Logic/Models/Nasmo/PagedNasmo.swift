//
//  PagedNasmo.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct PagedNasmo: Codable {
    let letues: Array<NasmoGroup>
    let currentPageNum: Int
    let nextPageNum: Int
    let totalPageNum: Int
}
