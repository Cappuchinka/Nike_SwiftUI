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
