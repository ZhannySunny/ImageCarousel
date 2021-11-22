//
//  Model.swift
//  ImageSlider
//
//  Created by Zhaniya  on 18.11.2021.
//

import Foundation

struct MarketPlaceData: Decodable, Hashable, Identifiable {
    
    let id = UUID()
    let name: String
    let status: String
    let regular_price: String
    let price_html: String
    let images: [ProductImage]
}

struct ProductImage: Decodable, Hashable, Identifiable {
    let id = UUID()
    let src: String
}
