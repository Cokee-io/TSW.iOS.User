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
    let userToken = UserDefaults.standard.string(forKey: "userToken")

    @State var tabSelection = 0
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = .white
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack{
//                ContentView()
//                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                
                if launchState.isLoadingComplete == false {
                    SplashView()
                        .environmentObject(launchState)
                } else {
                    if userToken == nil {
                        LoginView()
                    } else {
                        NavigationView {
                            TabView(selection: $tabSelection) {
                                HomeView()
                                    .tabItem {
                                        Image(systemName: "house")
                                        Text("홈")
                                    }.tag(0)
                                ScorecardListView(tabSelection: $tabSelection)
                                    .tabItem {
                                        Image("scorecard_icon").renderingMode(.template)
                                        Text("스코어카드")
                                    }.tag(1)
                                HomeView()
                                    .tabItem {
                                        Image("nasmo_icon").renderingMode(.template)
                                        Text("나스모")
                                    }.tag(2)
                                HomeView()
                                    .tabItem {
                                        Image(systemName: "ellipsis")
                                        Text("전체메뉴")
                                    }.tag(3)
                            }.accentColor(Color(.primary))
                        }
                    }
                }
            }
        }
    }
}
