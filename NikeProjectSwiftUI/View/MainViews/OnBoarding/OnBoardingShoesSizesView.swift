//
//  OnBoardingShoesSizesView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 20.12.2025.
//

import SwiftUI

struct OnBoardingShoesSizesView: View {

    let onComplete: () -> Void

    let sizes = [
        "4", "4.5", "5", "5.5",
        "6", "6.5", "7", "7.5",
        "8", "8.5", "9", "9.5",
        "10", "10.5", "11", "11.5",
        "12", "12.5", "13", "13.5",
        "14", "14.5", "15", "16",
        "17", "18"
    ]

    private let gridLayout = [
        GridItem(.adaptive(minimum: 75))
    ]

    @State private var selectedShoesIndex: Int? = nil

    var body: some View {
        ZStack {
            Rectangle()
                .overlay(
                    Image("shoesSizesBackground")
                        .resizable()
                )
                .ignoresSafeArea()

            VStack {
                VStack {
                    ProgressView(value: 0.6, total: 1.0)
                        .progressViewStyle(.linear)
                        .tint(.white)
                        .padding(.horizontal, 100)
                }
                .padding(.horizontal, 20)

                VStack(alignment: .leading) {
                    Text("What’s your shoe size?")
                    .font(.custom("Inter", size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.top, 32)
                }
                .padding(.leading, -40)

                LazyVGrid(columns: gridLayout, spacing: 10) {
                    ForEach(0..<sizes.count, id: \.self) { index in
                        ShoesSizeView(
                            size: sizes[index],
                            isSelected: selectedShoesIndex == index,
                            onTap: {
                                selectedShoesIndex = index
                            }
                        )
                    }
                }
                .padding(.horizontal, 20)

                Spacer()

                VStack {
                    NavigationLink(destination: GenderView(onComplete: onComplete)) {
                        Text("Next")
                            .font(.custom("Inter", size: 20))
                            .foregroundColor(selectedShoesIndex != nil ? Color.black : Color.gray)
                            .frame(maxWidth: .infinity)
                            .frame(height: 55)
                            .clipShape(Capsule())
                            .background(selectedShoesIndex != nil ? Color.white : Color.white.opacity(0.3))
                            .cornerRadius(30)
                            .padding(.horizontal, 110)
                    }
                    .disabled(!(selectedShoesIndex != nil))
                }
                .padding(.horizontal, 20)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    OnBoardingShoesSizesView(onComplete: {})
}
