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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
