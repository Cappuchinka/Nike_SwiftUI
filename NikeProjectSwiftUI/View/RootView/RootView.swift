//
//  RootView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 27.11.2025.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Label("Home", systemImage: "house")
            }
            ShopMainView().tabItem {
                Label("Shop", systemImage: "magnifyingglass")
            }
            ProfileView().tabItem {
                Label("Profile", systemImage: "person")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    RootView()
}
