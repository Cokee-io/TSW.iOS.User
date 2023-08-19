//
//  Scoresheet.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct Scoresheet: Codable {
    let id: String
    let userCode: Int
    let gameCode: Int
    let playHole: Int
    let totalScore: Int
    //    let totalHandicap: Int
    let endScore: Int
    let parArray: Array<Int>
    let scoreArray: Array<Int?>
    let puttingArray: Array<Int>
    let onArray: Array<Int>
}
