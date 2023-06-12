//
//  HomeView.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/08.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            ScrollView {
                Image("main")
                    .resizable()
                    .scaledToFill()
            }
            
        }
        
      
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
