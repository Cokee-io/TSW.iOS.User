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
    
    
    func login(withId: String, password: String) {
        UserDefaults.standard.setValue("test", forKey: "userToken")
    }
    
    
}
