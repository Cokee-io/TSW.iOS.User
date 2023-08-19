//
//  LoginView.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/01.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    @State var id = ""
    @State var pwd = ""
    let onLoginComplete: () -> Void
    
    var body: some View {
        let paddedWidth = UIScreen.main.bounds.width - (Spacing.spacingL * 2)
        
        NavigationView {
            VStack {
                Image("splash_logo")
                    .padding(.top, 100)
                    .padding(.bottom, 70)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 12.4) {
                        Image("human")
                        TextField("아이디", text: $id)
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, Spacing.spacingS)
                    .padding(.top, Spacing.spacingM)
                    .padding(.horizontal, Spacing.spacingM)
                    
                    Rectangle()
                        .frame(width: paddedWidth, height: 1)
                        .foregroundColor(Color(.backgroundsOutline2))
                    
                    HStack(spacing: 12.4) {
                        Image("lock")
                        SecureField("비밀번호", text: $pwd)
                            .foregroundColor(.white)
                    }
                    .padding(.top, Spacing.spacingS)
                    .padding(.bottom, Spacing.spacingM)
                    .padding(.horizontal, Spacing.spacingM)
                  
                }
                .overlay (
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color(.backgroundsOutline2), lineWidth: 1)
                )
                .padding(.horizontal, Spacing.spacingL)
                .padding(.bottom, Spacing.spacingM)
                
                Button {
                    let isSuccess = viewModel.login(withId: id, password: pwd)
                    if isSuccess { onLoginComplete() }
                } label: {
                    Text("로그인")
                        .font(Font(.headline))
                        .foregroundColor(.white)
                        .padding(.vertical, 17)
                }
                .frame(width: paddedWidth)
                .background(Color(.graybaseGray1))
                .cornerRadius(10)
                .padding(.bottom, Spacing.spacingXl)
                
                
                HStack(spacing: 11) {
                    NavigationLink {
                        
                    } label: {
                        Text("아이디 및 비밀번호 찾기")
                            .font(Font(.caption1))
                            .foregroundColor(Color(.graybaseGray1))
                    }
                    
                    Text("|")
                        .font(Font(.caption1))
                        .foregroundColor(Color(.graybaseGray2))
                    
                    NavigationLink {
                        RegistrationView()
                    } label: {
                        Text("회원가입")
                            .font(Font(.caption1))
                            .foregroundColor(Color(.primary))
                    }
                }
                
                Spacer()
                
                Text("간편로그인")
                    .font(Font(.subheadMedium))
                    .foregroundColor(Color(.graybaseGray1))
                    .padding(.bottom, 17)
                
                
                NavigationLink {
                    
                } label: {
                    HStack(spacing: 11) {
                        Image("")
                        Text("네이버 아이디로 로그인")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding(.vertical, Spacing.spacingM)
                    }
                }
                .frame(width: paddedWidth)
                .background(Color(red: 30 / 255.0, green: 200 / 255.0, blue: 0 / 255.0, opacity: 1))
                .cornerRadius(10)
                
                NavigationLink {
                    
                } label: {
                    HStack(spacing: 11) {
                        Image("")
                        Text("구글 아이디로 로그인")
                            .font(Font(.subheadRegular))
                            .foregroundColor(Color(.graybaseGray1))
                            .padding(.vertical, Spacing.spacingM)
                    }
                }
                .frame(width: paddedWidth)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.backgroundsOutline2), lineWidth: 1)
                )
                .padding(.bottom, 66)
                
                
            }
            .padding(.horizontal, Spacing.spacingXxs)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(onLoginComplete: {})
    }
}
