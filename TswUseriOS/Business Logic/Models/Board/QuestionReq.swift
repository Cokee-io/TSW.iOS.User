//
//  QuestionReq.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct QuestionReq: Codable {
    let id: String?
    let userId: String
    let title: String
    let content: String
    // attachments: String
}
