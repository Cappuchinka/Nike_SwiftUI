//
//  FavouritesManager.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 16.12.2025.
//

import Foundation
import Combine
import SwiftUI

class FavoritesManager: ObservableObject {
    static let shared = FavoritesManager()

    @Published private(set) var favoriteProducts: [Product] = []
    private let favoritesKey = "favorite_products"

    init() {
        loadFavorites()
    }

    func toggleFavorite(_ product: Product) {
        if isFavorite(product) {
            removeFromFavorites(product)
        } else {
            addToFavorites(product)
        }
    }

    func isFavorite(_ product: Product) -> Bool {
        favoriteProducts.contains { $0.id == product.id }
    }

    private func addToFavorites(_ product: Product) {
        if !isFavorite(product) {
            favoriteProducts.append(product)
            saveFavorites()
        }
    }

    private func removeFromFavorites(_ product: Product) {
        favoriteProducts.removeAll { $0.id == product.id }
        saveFavorites()
    }

    private func saveFavorites() {
        do {
            let data = try JSONEncoder().encode(favoriteProducts)
            UserDefaults.standard.set(data, forKey: favoritesKey)
            objectWillChange.send()
        } catch {
            print("Error saving favorites: \(error)")
        }
    }

    private func loadFavorites() {
        guard let data = UserDefaults.standard.data(forKey: favoritesKey) else { return }
        do {
            favoriteProducts = try JSONDecoder().decode([Product].self, from: data)
        } catch {
            print("Error loading favorites: \(error)")
        }
    }
}
