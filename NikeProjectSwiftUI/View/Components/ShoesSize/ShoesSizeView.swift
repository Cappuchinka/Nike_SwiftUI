//
//  ShoesSizeView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 20.12.2025.
//

import SwiftUI

struct ShoesSizeView: View {
    let size: String
    let isSelected: Bool
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            Rectangle()
                .fill(isSelected ? Color.white : Color.white.opacity(0.25))
                .cornerRadius(10)
                .frame(width: 75, height: 52)
                .overlay(
                    Text(size)
                        .font(.custom("Inter", size: 16))
                        .foregroundColor(isSelected ? .black : .white)
                )
        }
    }
}

//#Preview {
//    ShoesSizeView()
//}
