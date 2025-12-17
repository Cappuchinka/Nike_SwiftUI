//
//  ShopListView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 14.12.2025.
//

import SwiftUI

struct ShopListView: View {
    @State private var selectedTab = 0
    @StateObject private var viewModel = ProductViewModel()
    private let gridLayout = [
        GridItem(.adaptive(minimum: 170))
    ]

    let categoriesTabs = ["All", "Hoodies & Pullovers", "Tops & T-Shirts", "Pants", "Shoes", "Accessories & Equipment"]

    var body: some View {
        VStack {
            ScrollCategoryTabView(selectedTab: $selectedTab, categoriesTabs: categoriesTabs)

            ScrollView(.vertical) {
                LazyVGrid(columns: gridLayout, spacing: 5) {
                    ForEach(viewModel.products) { product in
                        ProductCardView(product: product)
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetchData(index: selectedTab)
        }
        .onChange(of: selectedTab) { oldValue, newValue in
            viewModel.fetchData(index: newValue)
        }
        .navigationTitle(Text("Shop"))
    }
}

#Preview {
    ShopListView()
}
