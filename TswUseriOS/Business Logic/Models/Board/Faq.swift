//
//  Faq.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

enum FaqCategory: String, Codable {
    case System = "System"
    case payment = "Payment"
    case Etc = "Etc"
}

struct Faq: Codable {
    let id: String
    let category: FaqCategory
    let title: String
    let content: String
    let createDate: Date
}
