//
//  CardBottomLabelView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 28.11.2025.
//

import SwiftUI

struct CardBottomLabelView: View {
    let item: ItemScroll
    let type: String
    var body: some View {
        VStack(alignment: .leading) {
            if type == "snickers" {
                Image(item.imageLabel)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 220, alignment: .center)
                    .clipped()
            } else if type == "categories" {
                Image(item.imageLabel)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 220, alignment: .top)
                    .clipped()
            }
            Text(item.label)
                .font(.custom("Inter", size: 15))
                .fontWeight(.semibold)
                .foregroundColor(.black)
        }
    }
}
