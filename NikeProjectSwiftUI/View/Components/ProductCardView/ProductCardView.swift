//
//  ProductCardView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 14.12.2025.
//

import SwiftUI

struct ProductCardView: View {
    private let frameWidth = 170.0

    let product: Product

    @StateObject private var favoritesManager = FavoritesManager.shared

    var body: some View {
        VStack (spacing: 5) {
            ZStack {
                Rectangle()
                    .fill(Color(.backgroundProductCard))
                    .overlay(
                            AsyncImage(url: URL(string: product.image_url)) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                            } placeholder: {
                                ProgressView()
                            }
                        )
                    .cornerRadius(10)

                VStack {
                    HStack {
                        Spacer()

                        Button(action: onTapBtn) {
                            ZStack {
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 28, height: 28)

                                Image(systemName: favoritesManager.isFavorite(product) ? "heart.fill" : "suit.heart")
                                   .frame(width: 14, height: 14)
                                   .foregroundColor(.black)

                                if favoritesManager.isFavorite(product) {
                                   Image(systemName: "heart.fill")
                                       .frame(width: 14, height: 14)
                                       .foregroundColor(.black)
                                       .scaleEffect(1.2)
                                       .transition(.scale)
                                }
                            }
                        }
                    }
                    .padding([.leading, .trailing, .top], 4)

                    Spacer()
                }
                .padding([.leading, .trailing], 4)
            }
            .frame(width: frameWidth, height: frameWidth, alignment: .leading)

            VStack {
                if product.productName != ProductType.NONE.rawValue {
                    HStack {
                        Text(product.productTypeName)
                            .font(.custom("Inter", size: 15))
                            .fontWeight(.semibold)
                            .foregroundColor(.orange)
                        Spacer()
                    }
                }

                HStack {
                    Text(product.productBrand)
                        .font(.custom("Inter", size: 15))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Spacer()
                }

                HStack {
                    Text(product.productName)
                        .font(.custom("Inter", size: 15))
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    Spacer()
                }

                HStack {
                    Text(String(format: "US$%.2f", product.price))
                        .font(.custom("Inter", size: 15))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Spacer()
                }
            }
            .frame(width: frameWidth)
            Spacer()
        }
    }

    private func onTapBtn() -> Void {
        favoritesManager.toggleFavorite(product)
    }
}
