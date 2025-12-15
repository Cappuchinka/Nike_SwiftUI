//
//  Product.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 14.12.2025.
//

enum ProductType: String, Codable {
    case SOLD_OUT = "SOLD_OUT"
    case NONE = "NONE"
    case BESTSELLER = "BESTSELLER"
    case UNAVAILABLE = "UNAVAILABLE"
}

struct Product: Codable, Identifiable {
    let id: Int
    let productType: ProductType
    let productTypeName: String
    let productBrand: String
    let productName: String
    let price: Double
    let image_url: String
}
