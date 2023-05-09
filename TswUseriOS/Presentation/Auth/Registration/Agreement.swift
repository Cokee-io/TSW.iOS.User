//
//  Agreement.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/10.
//

import SwiftUI

struct Agreement: View {
    @Binding var isAgreeByMarketing: Bool
    @Binding var isAgreeByLocation: Bool
    
    let onNext: () -> Void
    
    @State var isAgreeByRequired = false
    
    var body: some View {
        let paddedWidth = UIScreen.main.bounds.width - (Spacing.spacingL * 2)
        
        VStack{
            VStack(alignment: .leading) {
                CheckBoxToggle(
                    isOn: $isAgreeByRequired,
                    text: "[필수] 더스윙플레이 가입 필수약관 동의",
                    sizeType: .L
                )
                    .padding(.horizontal, Spacing.spacingM)
                    .padding(.top, Spacing.spacingL)
                    .padding(.bottom, Spacing.spacingXs)
                Rectangle()
                    .frame(width: paddedWidth, height: 1)
                    .foregroundColor(Color(.backgroundsOutline2))
                VStack(spacing: Spacing.spacingM) {
                    AgreementInfoCell(text: "더스윙플레이 이용약관", onTab: {})
                    AgreementInfoCell(text: "개인정보 수집 및 이용약관", onTab: {})
                    AgreementInfoCell(text: "전자 금융 이용약관", onTab: {})
                }
                .padding(.vertical, Spacing.spacingL)
            }
            .overlay (
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(.backgroundsOutline2), lineWidth: 1)
            )
            .padding(.top, Spacing.spacingXl)
            .padding(.horizontal, Spacing.spacingL)
            .padding(.bottom, Spacing.spacingM)
            
            HStack() {
                CheckBoxToggle(
                    isOn: $isAgreeByLocation,
                    text: "[선택] 더스윙플레이 위치정보 이용 동의",
                    sizeType: .L
                )
                .padding(.horizontal, Spacing.spacingM)
                .padding(.vertical, Spacing.spacingL)
                Spacer()
            }
            .overlay (
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(.backgroundsOutline2), lineWidth: 1)
            )
            .padding(.horizontal, Spacing.spacingL)
            .padding(.bottom, Spacing.spacingM)
            
            HStack() {
                CheckBoxToggle(
                    isOn: $isAgreeByMarketing,
                    text: "[선택] 더스윙플레이 마케팅 이용 동의",
                    sizeType: .L
                )
                    .padding(.horizontal, Spacing.spacingM)
                    .padding(.vertical, Spacing.spacingL)
                Spacer()
            }
            .overlay (
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(.backgroundsOutline2), lineWidth: 1)
            )
            .padding(.horizontal, Spacing.spacingL)
            
            Spacer()
            Button {
                onNext()
            } label: {
                Text("다음")
                    .font(Font(.headline))
                    .foregroundColor(isAgreeByRequired ? .white : .black)
                    .padding(.vertical, 17)
            }
            .disabled(!isAgreeByRequired)
            .frame(width: paddedWidth)
            .background(Color(isAgreeByRequired ? .primary : .backgroundsLightBeige ))
            .cornerRadius(10)
        }
    }
}

struct AgreementInfoCell: View {
    let text: String
    let onTab: () -> Void
    
    var body: some View {
        HStack(alignment: .center, spacing: Spacing.spacingXxs) {
            Image(systemName: "checkmark")
                .foregroundColor(.black)
            Text(text)
                .font(Font(.subheadRegular))
                .foregroundColor(Color(.graybaseGray1))
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.black)
        }
        .padding(.horizontal, Spacing.spacingM)
        .onTapGesture {
            onTab()
        }
    }
}

struct Agreement_Previews: PreviewProvider {
    static var previews: some View {
        Agreement(isAgreeByMarketing: .constant(false), isAgreeByLocation: .constant(false), onNext: {})
    }
}
