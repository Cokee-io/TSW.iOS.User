//
//  AuthService.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/01.
//

import Foundation
import Combine

protocol AuthServiceProtocol: AnyObject {
//    var tokenInfo: TokenInfo? { get set }
    var networker: NetworkerProtocol { get }
    
    func login(username: String, password: String) -> AnyPublisher<ApiResponse<TokenInfo>, Error>
}

final class AuthService: AuthServiceProtocol {
//    @AppStorage("userToken") private(set) var tokenInfo: TokenInfo? = nil
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func login(username: String, password: String) -> AnyPublisher<ApiResponse<TokenInfo>, Error> {
        let endpoint = Endpoint.login
        
        return networker.post(type: ApiResponse<TokenInfo>.self, url: endpoint.url, headers: [:], body: LoginReq(id: username, pwd: password))
    }
    
    func refresh() -> AnyPublisher<ApiResponse<TokenInfo>, Error> {
        let endpoint = Endpoint.refresh
        
        return networker.get(type: ApiResponse<TokenInfo>.self, url: endpoint.url, headers: [:])
    }
}
