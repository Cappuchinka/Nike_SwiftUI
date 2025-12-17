//
//  Product.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 14.12.2025.
//

enum CategoryType: String, Codable {
    case ACCESSORIES_EQUIPMENT = "ACCESSORIES_EQUIPMENT"
    case HOODIES_PULLOVERS = "HOODIES_PULLOVERS"
    case PANTS = "PANTS"
    case TOPS_TSHIRTS = "TOPS_TSHIRTS"
    case SHOES = "SHOES"
}

enum ProductType: String, Codable {
    case SOLD_OUT = "SOLD_OUT"
    case NONE = "NONE"
    case BESTSELLER = "BESTSELLER"
    case UNAVAILABLE = "UNAVAILABLE"
}

struct Product: Codable, Identifiable {
    let id: Int
    let category: CategoryType
    let categoryName: String
    let productType: ProductType
    let productTypeName: String
    let productBrand: String
    let productName: String
    let price: Double
    let image_url: String
}
