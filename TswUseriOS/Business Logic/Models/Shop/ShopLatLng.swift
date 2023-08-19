//
//  ShopLatLng.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/08/19.
//

import Foundation
import CoreLocation

struct ShopLatLng: Codable {
    let latitude: Double
    let longitude: Double
    
    func convertToNaverLocation() -> CLLocation {
        return CLLocation(latitude: latitude, longitude: longitude )
    }
}
