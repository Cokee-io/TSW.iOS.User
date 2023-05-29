//
//  ScorecardListView.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/29.
//

import SwiftUI

struct ScorecardListView: View {
    
    var screen = UIScreen.main.bounds
    @Binding var tabSelection: Int
    @State private var isShowingDetail = false
    
    var body: some View {
            ZStack(alignment: .top) {
                ScrollView {
                    Image("scorecard_list")
                        .resizable()
                        .scaledToFill()
                }
                    Rectangle()
                        .frame(width: 50, height: 50)
                        .padding(.top, 40)
                        .padding(.trailing, 300)
                        .foregroundColor(Color.black.opacity(0.01))
                        .onTapGesture {
                            tabSelection = 0
                        }
                
               
                Rectangle()
                    .frame(width: screen.width)
                    .padding(.top, 100)
                    .foregroundColor(Color.black.opacity(0.01))
                    .onTapGesture {
                        debugPrint("press")
                        isShowingDetail.toggle()
                    }
                
               
                NavigationLink("ScorecardDetail", isActive: $isShowingDetail) {
                    ScorecardDetailView(isShowing: $isShowingDetail)
                        .navigationBarBackButtonHidden(true)
                }
            }
            .ignoresSafeArea()
    }
}

struct ScorecardListView_Previews: PreviewProvider {
    static var previews: some View {
        ScorecardListView(tabSelection: .constant(1))
    }
}
