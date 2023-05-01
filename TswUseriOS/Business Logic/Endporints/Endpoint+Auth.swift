//
//  Endpoint+Auth.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/01.
//

import Foundation

extension Endpoint {
    static var login: Self {
        return Endpoint(path: "/auth/user")
    }
    
    static var ssoLogin: Self {
        return Endpoint(path: "/user/sso/login")
    }
    
    static var refresh: Self {
        return Endpoint(path: "/auth/user/refresh")
    }
    
    static var user: Self {
        return Endpoint(path: "/auth/user")
    }
    
    
}
