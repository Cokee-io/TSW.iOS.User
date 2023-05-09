//
//  RegistrationView.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/09.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()
    
    @State var registerProcess = RegistrationProcess.agreement
    @State var isAgreeByMarketing = false
    @State var isAgreeByLocation = false
    @Environment(\.dismiss) var dismiss
    
    enum RegistrationProcess {
        case agreement
        case form
        case complete
    }
    
    var body: some View {
        VStack() {
            PageHeader(title: "회원가입")
            if registerProcess == .agreement {
                Agreement(
                    isAgreeByMarketing: $isAgreeByMarketing,
                    isAgreeByLocation: $isAgreeByLocation,
                    onNext: {
                        registerProcess = .form
                    }
                )
            } else if registerProcess == .form {
                
            } else if registerProcess == .complete {
                
            }
           
        }.navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                Button {
                switch (registerProcess) {
                    case .form:
                        registerProcess = .agreement
                    default:
                        dismiss()
                }
                
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color(.black2))
                }
            )
            .navigationBarTitle("회원가입", displayMode: .inline)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
