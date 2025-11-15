//
//  HorizontalScrollView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 15.11.2025.
//

import SwiftUI

struct CategoryHScrollView: View {
    let categories: [ItemScroll] = [
        ItemScroll(label: "Best Sellers", imageLabel: "bestSellers"),
        ItemScroll(label: "Featured In Nike Air", imageLabel: "featuredInNikeAir"),
        ItemScroll(label: "Just Do It", imageLabel: "justDoIt"),
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 5) {
                ForEach(0..<categories.count, id: \.self) { index in
                    CardView(item: categories[index])
                }
            }
            .padding(.horizontal, 20)
        }
        .padding(.horizontal, -20)
    }
}


struct CardView: View {
    let item: ItemScroll
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(item.imageLabel)
                .resizable()
                .scaledToFill()
                .frame(width: 220, height: 220, alignment: .top)
                .clipped()
            Text(item.label)
                .font(.custom("Inter", size: 15))
                .fontWeight(.semibold)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    CategoryHScrollView()
}
