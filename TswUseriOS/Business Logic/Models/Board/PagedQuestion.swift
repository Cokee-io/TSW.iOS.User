//
//  PagedQuestion.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct PagedQuestion: Codable {
    let values: Array<Question>
    let currentPageNum: Int
    let nextPageNum: Int
    let totalPageNum: Int
}
