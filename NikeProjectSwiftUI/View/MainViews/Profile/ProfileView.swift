//
//  ProfileView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 28.11.2025.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack(alignment: .top, spacing: 0) {
                    VStack(alignment: .trailing, spacing: 0) {
                        Image("p_00")
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 2.5, alignment: .leading)
                            .clipped()
                        Image("p_10")
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 3.5, alignment: .top)
                            .clipped()
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Image("p_01")
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 3.5, alignment: .top)
                        Image("p_11")
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 2.5, alignment: .leading)
                            .clipped()
                    }
                }
                
                VStack {
                    Text("Welcome to the\nNike App")
                        .font(.custom("Inter", size: 24))
                        .fontWeight(.medium)
                }
                .padding(.top, 60)
                .padding(.leading, 20)
                
            }
        }
    }
}

#Preview {
    ProfileView()
}
