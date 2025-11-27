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
            ShopView().tabItem {
                Label("Shop", systemImage: "magnifyingglass")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    RootView()
}
