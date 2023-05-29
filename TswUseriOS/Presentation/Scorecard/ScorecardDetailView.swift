//
//  ScorecardDetailView.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/29.
//

import SwiftUI

struct ScorecardDetailView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                Image("scorecard_detail")
                    .resizable()
                    .scaledToFill()
            }
            
            Rectangle()
                .frame(width: 50, height: 50)
                .padding(.top, 40)
                .padding(.trailing, 300)
                .foregroundColor(Color.black.opacity(0.01))
                .onTapGesture {
                    isShowing.toggle()
                }
        }
        .ignoresSafeArea()
    }
}

struct ScorecardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ScorecardDetailView(isShowing: .constant(false))
    }
}
