//
//  OnBoardingView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 15.11.2025.
//

import SwiftUI

struct OnBoardingView: View {

    let onComplete: () -> Void

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black)
                .ignoresSafeArea()

            ScrollView(showsIndicators: false) {
                VStack(spacing: 12) {
                    HStack(alignment: .top, spacing: 12) {
                        VStack(spacing: 12) {
                            card("ob_00", column: "left", index: 0)
                            card("ob_10", column: "left", index: 1)
                        }

                        VStack(spacing: 12) {
                            card("ob_01", ratio: 0.5, column: "right", index: 2)
                            card("ob_11", ratio: 1.65, column: "right", index: 3)
                        }
                    }

                    HStack(alignment: .top, spacing: 12) {
                        VStack(spacing: 12) {
                            card("ob_20", ratio: 2, column: "left", index: 4)
                            card("ob_30", ratio: 1.3, column: "left", index: 5)
                        }

                        VStack(spacing: 12) {
                            HStack(spacing: 12) {
                                card("ob_121", ratio: 2, column: "right", small: true, index: 6)
                                card("ob_122", ratio: 2, column: "right", small: true, index: 7)
                            }
                            card("ob_13", ratio: 1.3, column: "right", index: 8)
                        }
                    }
                }
            }
            .ignoresSafeArea()

            LinearGradient(
                gradient: Gradient(
                    stops: [
                        .init(color: .black.opacity(1.0), location: 0.0),
                        .init(color: .black.opacity(0.65), location: 0.25),
                        .init(color: .black.opacity(0.35), location: 0.5),
                        .init(color: .black.opacity(0.65), location: 0.75),
                        .init(color: .black.opacity(1.0), location: 1.0)
                    ]
                ),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(alignment: .center) {
                VStack(alignment: .leading) {
                    ProgressView(value: 0.2, total: 1.0)
                        .progressViewStyle(.linear)
                        .tint(.white)
                        .padding(.horizontal, 100)

                    Text("To personalize your" +
                         "\nexperience and" +
                         "\nconnect you to sport," +
                         "\nwe've got a few" +
                         "\nquestions for you."
                    )
                    .font(.custom("Inter", size: 32))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.top, 32)
                }

                Spacer()

                NavigationLink(destination: OnBoardingTextView(onComplete: onComplete)) {
                    Text("Get Started")
                        .font(.custom("Inter", size: 20))
                        .foregroundColor(Color.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .clipShape(Capsule())
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding(.horizontal, 110)
                }
            }
            .padding(.leading, 16)
        }
        .navigationBarBackButtonHidden(true)
    }

    func card(_ name: String,
              ratio: CGFloat = 1.3,
              column: String = "left",
              small: Bool = false,
              index: Int
    ) -> some View {
        let screenWidth = UIScreen.main.bounds.width
        let spacing: CGFloat = 12
        let sidePadding: CGFloat = 16

        let leftColumnWidth = (screenWidth - sidePadding*2 - spacing) * 0.45
        let rightColumnWidth = (screenWidth - sidePadding*2 - spacing) * 0.55

        let smallRightWidth = (rightColumnWidth - spacing) / 2
        let width = small
            ? smallRightWidth
            : (column == "right" ? rightColumnWidth : leftColumnWidth)

        return Image(name)
            .resizable()
            .scaledToFill()
            .frame(width: width,
                   height: width * ratio)
            .clipped()
            .cornerRadius(8)
    }
}

#Preview {
    OnBoardingView(onComplete: {})
}
