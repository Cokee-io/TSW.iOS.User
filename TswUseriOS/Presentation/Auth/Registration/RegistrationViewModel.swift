//
//  RegistrationViewModel.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/10.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    private var authService: AuthServiceProtocol
    
    init() {
        authService = AuthService()
    }
    
    
    func login(withId: String, password: String) {
        
    }
    
    
}
