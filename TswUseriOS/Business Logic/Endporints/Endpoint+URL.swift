//
//  Endpoint+URL.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/01.
//

import Foundation

extension Endpoint {
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = ""
        components.path = "/api" + path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return url
    }
    
    var headers: [String: Any] {
        return [
            "Authorization": "" // TODO: JWT Token
        ]
    }
}
