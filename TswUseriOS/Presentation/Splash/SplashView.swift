//
//  SplashView.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/02.
//

import SwiftUI

struct SplashView: View {
    @EnvironmentObject private var launchStateService: LaunchStateService
    
    var body: some View {
        VStack {
            
            Image("splash_logo")
        }
        .onAppear {
            DispatchQueue.main.async {
                
                launchStateService.isLoadingComplete.toggle()
            }
        }
        
      
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
