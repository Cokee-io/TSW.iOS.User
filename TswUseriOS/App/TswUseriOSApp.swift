//
//  TswUseriOSApp.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/02/04.
//

import SwiftUI

@main
struct TswUseriOSApp: App {
    let persistenceController = PersistenceController.shared
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var launchState = LaunchStateService()

    var body: some Scene {
        WindowGroup {
            ZStack{
                ContentView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                
                if launchState.isLoadingComplete == false {
                    SplashView()
                }
                
            }
            .environmentObject(launchState)
           
        }
    }
}
