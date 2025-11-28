//
//  CardLabelOnImageView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 28.11.2025.
//

import SwiftUI

struct CardLabelOnImageView: View {
    let item: ItemScroll
    
    var body: some View {
        ZStack(alignment: .center) {
            if item.imageLabel == "Football" {
                Image(item.imageLabel)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 220, alignment: .leading)
                    .clipped()
                    .overlay(
                        Rectangle().foregroundColor(.black.opacity(0.4))
                    )
            } else {
                Image(item.imageLabel)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 220, alignment: .center)
                    .clipped()
                    .overlay(
                        Rectangle().foregroundColor(.black.opacity(0.4))
                    )
            }
            Text(item.label)
                .font(.custom("Inter", size: 23))
                .fontWeight(.medium)
                .foregroundColor(.white)
        }
    }
}
