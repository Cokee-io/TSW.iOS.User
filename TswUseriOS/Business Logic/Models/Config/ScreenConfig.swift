//
//  ScreenConfig.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation

enum TeePositionType: Int, Codable {
    case Back = 0
    case Champ = 1
    case Front = 2
    case Senior = 3
    case Lady = 4
}

enum BatPositionType: Int, Codable {
    case Right = 0
    case Left = 1
}

struct ScreenConfig: Codable {
    let id: String
    var teePosition: TeePositionType = .Back
    var teeHeight : Int = 25
    //    var level : Int = 0
    var batPosition :BatPositionType = .Right
    var concede : Float = 0.0
    var mulligan : Int = 0
    var fieldLevel : Int = 0
    var swingLevel : Int = 0
    var puttingFlag : Bool = true
}
