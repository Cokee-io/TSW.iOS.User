//
//  NasmoGroup.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct NasmoGroup: Codable {
    let date: String
    let ccName: String
    let nasmoList: Array<NasmoListItem>
}
