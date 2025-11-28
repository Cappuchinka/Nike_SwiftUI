//
//  OnBoardingView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 15.11.2025.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        ZStack {

            
            Rectangle()
               .fill(
                   LinearGradient(
                       gradient:
                           Gradient(
                               stops: [
                                   Gradient.Stop(color: Color.onBoardingTopGradient.opacity(0.5), location: 0.0),
                                   Gradient.Stop(color: Color.onBoardingMiddleGradient.opacity(0.5), location: 0.5),
                                   Gradient.Stop(color: Color.onBoardingBottomGradient.opacity(0.5), location: 1.0),
                               ]
                           ),
                       startPoint: .bottom,
                       endPoint: .bottom
                   )
               )
               .ignoresSafeArea()
            
            HStack(spacing: 12) {
                VStack(alignment: .trailing, spacing: 12) {
                    Image("ob_00")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(8)
                    Image("ob_10")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(8)
                    Image("ob_20")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(8)
                    Image("ob_30")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(8)
                }
                VStack(alignment: .leading, spacing: 12) {
                    Image("ob_01")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(8)
                    Image("ob_11")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(8)
                    HStack(alignment: .top, spacing: 12) {
                        Image("ob_121")
                            .resizable()
//                            .scaledToFill()
                            .scaledToFit()
                            .cornerRadius(8)
//                            .scaleEffect(1.5, anchor: .topLeading)
//                            .clipped()
                        Image("ob_122")
                            .resizable()
//                            .scaledToFill()
                            .scaledToFit()
                            .cornerRadius(8)
//                            .scaleEffect(1.5, anchor: .topLeading)
//                            .clipped()
                    }
                    Image("ob_13")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(8)
                }
            }
            
            VStack(alignment: .center) {
                VStack(alignment: .leading) {
                    ProgressView(value: 0.5, total: 1.0)
                        .progressViewStyle(.linear)
                        .tint(.white)
                        .padding(.horizontal, 100)
                        .padding(.top, 32)
                    
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
                
                NavigationLink(destination: RootView()) {
                    Text("Get Started")
                        .font(.custom("Inter", size: 20))
                        .foregroundColor(Color.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .clipShape(Capsule())
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding(.horizontal, 110)
                        .padding(.bottom, 40)
                }
            }
            .padding(.leading, 16)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    OnBoardingView()
}
