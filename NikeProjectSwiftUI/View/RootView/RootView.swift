//
//  RootView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 27.11.2025.
//

import SwiftUI

struct RootView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationStack {
                HomeView()
            }.tabItem {
                Label("Home", image: selectedTab == 0 ? "homeTab" : "nHomeTab")
            }
            .tag(0)

            NavigationStack {
                ShopMainView()
            }.tabItem {
                Label("Shop", image: selectedTab == 1 ? "shopTab" : "nShopTab")
            }
            .tag(1)

            NavigationStack {
                FavouritesView()
            }.tabItem {
                Label("Favourites", image: selectedTab == 2 ? "favouritesTab" : "nFavouritesTab")
            }
            .tag(2)

            NavigationStack {
                BagView()
            }.tabItem {
                Label("bag", image: selectedTab == 3 ? "bagTab" : "nBagTab")
            }
            .tag(3)

            NavigationStack {
                ProfileView()
            }.tabItem {
                Label("Profile", image: selectedTab == 4 ? "profileTab" : "nProfileTab")
            }
            .tag(4)

        }
        .accentColor(Color(.black))
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    RootView()
}
