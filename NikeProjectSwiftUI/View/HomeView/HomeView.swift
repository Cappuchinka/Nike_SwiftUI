//
//  HomeView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 27.11.2025.
//

import SwiftUI

struct HomeView: View {
    let categories: [ItemScroll] = [
        ItemScroll(label: "Running", imageLabel: "Running"),
        ItemScroll(label: "Football", imageLabel: "Football"),
        ItemScroll(label: "Basketball", imageLabel: "Basketball"),
    ]
    
    let snickers: [ItemScroll] = [
        ItemScroll(label: "Nike Force 1'07 White", imageLabel: "snickersWhite"),
        ItemScroll(label: "New Balance 2002R", imageLabel: "snickersNB"),
        ItemScroll(label: "Nike Force 1'07 Triple Black", imageLabel: "snickersBlack"),
        ItemScroll(label: "Nike Legend Essential 2", imageLabel: "snickersRed"),
    ]
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom) {
                Text("Shop My Interests")
                    .font(.custom("Inter", size: 20))
                    .fontWeight(.semibold)
                Spacer()
                Text("Add Interest")
                    .font(.custom("Inter", size: 17))
                    .fontWeight(.regular)
                    .foregroundColor(.addInterest)
            }
            ScrollView {
                HStack {
                    CategoryHScrollView(categories: categories, typeCard: "onImage", typeAlignment: "categories")
                }
                .padding(.top, 25)
                
                HStack {
                    Text("Recommended for You")
                        .font(.custom("Inter", size: 21))
                        .fontWeight(.medium)
                    Spacer()
                }
                .padding(.top, 77)
                
                HStack {
                    CategoryHScrollView(categories: snickers, typeCard: "bottom", typeAlignment: "snickers")
                }
                .padding(.top, 15)
                Spacer()
            }
            
        }
        .padding(.horizontal, 20)
        .padding(.top, 20)
    }
}

#Preview {
    HomeView()
}
