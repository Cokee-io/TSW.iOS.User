//
//  PagedNotice.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct PagedNotice: Codable {
    let values: Array<Notice>
    let currentPageNum: Int
    let nextPageNum: Int
    let totalPageNum: Int
}
