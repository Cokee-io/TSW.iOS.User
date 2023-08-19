//
//  Scorecard.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

struct Scorecard: Codable {
    let id: String
    let gameCode: Int
    let userNickname: String
    let ccName: String?
    let ccCourse: String?
    let champTee: Int
    let personnel: Int
    let scoreSheet: Scoresheet
    let nasmoIdArray: Array<Int>
    let driverDistanceArray: Array<Int>
    var avgDriverDistance: Int
    var maxDriverDistance: Int
    var fairway: Int
    var gir: Int
    var holeCupBatting: Int
    let scoreInfoArray: Array<Int>
    let nasmoArray: Array<NasmoListItem>
}
