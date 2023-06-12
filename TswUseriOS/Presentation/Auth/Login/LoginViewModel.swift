//
//  LoginViewModel.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/01.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
    
    private var authService: AuthServiceProtocol
    
    init() {
        authService = AuthService()
    }
    
    
    func login(withId: String, password: String) -> Bool {
        var isSuccess = false
        let publisher = authService.login(username: withId, password: password)
        let cancellable = publisher.sink { completion in
            print("Completion: \(completion)")
        } receiveValue: { res in
            if res.status == "SUCESS" {
                let token = res.data.token
                let refreshToken = res.data.refreshToken
                
                UserDefaults.standard.setValue(token, forKey: "userToken")
                UserDefaults.standard.setValue(refreshToken, forKey: "refreshToken")
                isSuccess = true
            }
        }
        
        return isSuccess
    }
}
