//
//  RegistrationView.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/09.
//

import SwiftUI

struct RegistrationView: View {
    @State var RegisterProcess = ""
    @State var isUnmovableToNext = true
    
    var body: some View {
        VStack() {
            PageHeader(title: "회원가입")
            Spacer()
            Button {
                
            } label: {
                Text("다음")
                    .font(Font(.headline))
                    .foregroundColor(isUnmovableToNext ? .black : .white)
                    .padding(.vertical, 17)
            }
            .disabled(isUnmovableToNext)
            .frame(width: UIScreen.main.bounds.width - 40)
            .background(Color(isUnmovableToNext ? .backgroundsLightBeige : .primary))
            .cornerRadius(10)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
