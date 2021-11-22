//
//  ProductViewModel.swift
//  ImageSlider
//
//  Created by Zhaniya  on 18.11.2021.
//

import SwiftUI

import Foundation
import Combine
import OAuthSwift

class ProductViewModel: ObservableObject {
    
    @Published var products: [MarketPlaceData] = []
    private var cancellationToken: AnyCancellable?
    
    init() {
        getProducts()
    }
    
}

extension ProductViewModel {

    func getProducts() {
        cancellationToken = NetworkManager().fetchProducts()
            .mapError({ (error) -> Error in
                print(error)
                return error
            })
            .sink(receiveCompletion: { _ in },
                  receiveValue: { items in
                    self.products = items
            })
}
}
