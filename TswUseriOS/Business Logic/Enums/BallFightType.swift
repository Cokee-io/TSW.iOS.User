//
//  BallFightType.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/01.
//

import Foundation

enum BallFightType: String, Decodable {
    case Straight
    case Fade
    case Draw
    case Slice
    case Hook
    case Push
    case Pull
    case PullHook
    case PushSlice
}
