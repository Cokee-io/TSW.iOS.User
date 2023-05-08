//
//  PageHeader.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/09.
//

import SwiftUI

struct PageHeader: View {
    let title: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color(.backgroundsLightBeige)
            Text(title)
                .font(Font(.subheadMedium))
                .foregroundColor(Color.black)
                .padding(.leading, Spacing.spacingL)
        }
        .frame(height: 54)
    }
}

struct PageHeader_Previews: PreviewProvider {
    static var previews: some View {
        PageHeader(title: "테스트")
    }
}
