//
//  ProductViewModel.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 15.12.2025.
//

import Foundation
import Combine

let productAPIURLString = "https://raw.githubusercontent.com/Cappuchinka/NikeSwiftUIServerData/refs/heads/master/json_data";

class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    func fetchData() {
        guard let url = URL(string: productAPIURLString) else {
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
