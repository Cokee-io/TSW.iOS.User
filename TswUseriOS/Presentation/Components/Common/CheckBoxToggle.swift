//
//  CheckBoxToggle.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/09.
//

import SwiftUI

enum CheckBoxSizeType {
    case S
    case L
    
    var size: CGFloat {
        switch self {
            case .S:
                return 19
            case .L:
                return 30
        }
    }
}


struct CheckBoxToggle: View {
    @Binding var isOn: Bool
    let text: String
    let sizeType: CheckBoxSizeType
    
    var body: some View {
        let size = sizeType.size
        
        HStack(alignment: .center) {
            ZStack {
                if isOn {
                    Circle()
                        .foregroundColor(Color(.primary) )
                }
                
                Image(systemName: isOn ? "checkmark" : "checkmark.circle")
                    .resizable()
                    .foregroundColor(Color( isOn ? .white : .graybaseGray3) )
                    .frame(width: isOn ? size / 2 - 2 : size - 2, height: isOn ? size / 2 - 2 : size - 2)

            }
            .frame(width: size)
            Text(text).padding(.top, -3)
        }
        .onTapGesture {
            isOn.toggle()
        }
    }
}

struct CheckBoxToggle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CheckBoxToggle(isOn: .constant(false), text: "[필수] 플레이필드 가입 필수약관 동의", sizeType: .L)
            CheckBoxToggle(isOn: .constant(true), text: "[필수] 플레이필드 가입 필수약관 동의", sizeType: .L)
            CheckBoxToggle(isOn: .constant(true), text: "[필수] 플레이필드 가입 필수약관 동의", sizeType: .S)
        }
    }
}
