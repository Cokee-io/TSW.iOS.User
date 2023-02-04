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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
