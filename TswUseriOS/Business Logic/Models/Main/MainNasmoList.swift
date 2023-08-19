//
//  MainNasmoList.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct MainNasmoList: Codable {
    let shopBranch: String
    let nasmoList: Array<NasmoListItem>
}
