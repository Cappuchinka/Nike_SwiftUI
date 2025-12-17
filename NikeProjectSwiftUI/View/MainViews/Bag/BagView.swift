//
//  BagView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 16.12.2025.
//

import SwiftUI

struct BagView: View {
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Image(systemName: "bag.badge.minus")
                    .font(.system(size: 50))
                    .foregroundColor(.gray)
                Text("Bag is empty")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
            .frame(maxHeight: .infinity)
        }
        .navigationTitle("Bag")
    }
}

#Preview {
    BagView()
}
