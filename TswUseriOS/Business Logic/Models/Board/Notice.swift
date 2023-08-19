//
//  Notice.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct Notice: Codable {
    let id: String
    let title: String
    let content: String
    let attachments: Array<String>
    let createDate: Date
}
