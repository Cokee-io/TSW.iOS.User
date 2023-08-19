//
//  Question.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

enum QuestionStatus: String, Codable {
    case Receipt = "Receipt"
    case Complete = "Complete"
}

struct Question: Codable {
    let id: String?
    let status: QuestionStatus
    let title: String
    let content: String
    let answer: String?
    let attachments: Array<String>
    let createDate: Date
}
