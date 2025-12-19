//
//  ProductViewModel.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 15.12.2025.
//

import Foundation
import Combine

let host = "https://raw.githubusercontent.com/Cappuchinka/NikeSwiftUIServerData/refs/heads/master/";

class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    let urls = [
        "all_json_data.json",
        "hoodies_json_data.json",
        "tops_json_data.json",
        "pants_json_data.json",
        "shoes_json_data.json",
        "accessories_json_data.json",
    ]

    func fetchData(index: Int) {
        guard let url = URL(string: host + urls[index]) else {
            errorMessage = "Некорректный URL"
            return
        }

        isLoading = true
        errorMessage = nil

        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            DispatchQueue.main.async {
                self?.isLoading = false

                if let error = error {
                    self?.errorMessage = error.localizedDescription
                    return
                }

                guard let data = data else {
                    self?.errorMessage = "Нет данных"
                    return
                }

                do {
                    let decodedData = try JSONDecoder().decode([Product].self, from: data)
                    self?.products = decodedData
                } catch {
                    self?.errorMessage = "Ошибка декодирования: \(error.localizedDescription)"
                }
            }
        }.resume()
    }
}
