//
//  OnBoardingTextView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 20.12.2025.
//

import SwiftUI

struct OnBoardingTextView: View {
    let onComplete: () -> Void

    let firstPartText =  "Stay in the know with\n" +
                        "notifications about\n" +
                        "First Access to\n" +
                        "products, invites to\n"

    let secondPartText = "experiences,\n" +
                        "personalized offers,\n" +
                        "and order updates.\n"

    var text: String {
        return firstPartText + secondPartText
    }

    var body: some View {
        ZStack {
            Rectangle()
                .overlay(
                    Image("onBoardingBackground")
                        .resizable()
                )
                .ignoresSafeArea()
            VStack {
                VStack {
                    ProgressView(value: 0.4, total: 1.0)
                        .progressViewStyle(.linear)
                        .tint(.white)
                        .padding(.horizontal, 100)
                }
                .padding(.horizontal, 20)

                VStack(alignment: .leading) {
                    Text(text)
                    .font(.custom("Inter", size: 32))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding(.top, 32)
                }
                .padding(.leading, -40)

                Spacer()

                VStack {
                    NavigationLink(destination: GenderView(onComplete: onComplete)) {
                        Text("Next")
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
                .padding(.horizontal, 20)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    OnBoardingTextView(onComplete: {})
}
