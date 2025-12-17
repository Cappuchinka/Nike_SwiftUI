//
//  FavouritesView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 16.12.2025.
//

import SwiftUI

struct FavouritesView: View {
    @StateObject private var favoritesManager = FavoritesManager.shared

    private let gridLayout = [
        GridItem(.adaptive(minimum: 170))
    ]

    var body: some View {
        VStack {
            if favoritesManager.favoriteProducts.isEmpty {
                VStack(spacing: 20) {
                    Image(systemName: "heart.slash")
                        .font(.system(size: 50))
                        .foregroundColor(.gray)
                    Text("No favorites yet")
                        .font(.headline)
                        .foregroundColor(.gray)
                }
                .frame(maxHeight: .infinity)
            } else {
                ScrollView(.vertical) {
                    LazyVGrid(columns: gridLayout, spacing: 5) {
                        ForEach(favoritesManager.favoriteProducts) { product in
                            ProductCardView(product: product)
                        }
                    }
                }
            }
        }
        .navigationTitle("Favorites")
    }
}
