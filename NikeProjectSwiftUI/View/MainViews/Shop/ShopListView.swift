//
//  ShopListView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 14.12.2025.
//

import SwiftUI

struct ShopListView: View {
    @StateObject private var viewModel = ProductViewModel()
    private let gridLayout = [
        GridItem(.adaptive(minimum: 170))
    ]

    var body: some View {
        VStack {
            ScrollView(.vertical) {
                LazyVGrid(columns: gridLayout, spacing: 5) {
                    ForEach(viewModel.products) { product in
                        ProductCardView(product: product)
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetchData()
        }
        .navigationTitle(Text("Shop"))
    }
}

#Preview {
    ShopListView()
}
