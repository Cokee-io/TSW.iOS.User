//
//  NasmoListView.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/29.
//

import SwiftUI

struct NasmoListView: View {
    
    var screen = UIScreen.main.bounds
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                Image("nasmo_list")
                    .resizable()
                    .scaledToFill()
            }
            
            Rectangle()
                .frame(width: 50, height: 50)
                .padding(.top, 40)
                .padding(.trailing, 300)
                .foregroundColor(Color.black.opacity(0))
                .onTapGesture {
                    
                }
            
            Rectangle()
                .frame(width: screen.width)
                .padding(.top, 40)
                .foregroundColor(Color.black.opacity(0))
                .onTapGesture {
                    
                }
        }
        .ignoresSafeArea()
    }
}

struct NasmoListView_Previews: PreviewProvider {
    static var previews: some View {
        NasmoListView()
    }
}
