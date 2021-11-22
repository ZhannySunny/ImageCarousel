//
//  NetworkManager.swift
//  ImageSlider
//
//  Created by Zhaniya  on 18.11.2021.
//

import Foundation
import Combine
import OAuthSwift

class NetworkManager {
    
    let oauth = OAuth1Swift(consumerKey: Keys.consumerKey.rawValue, consumerSecret: Keys.consumerSecret.rawValue)
    let subject = PassthroughSubject<[MarketPlaceData], Error>()

    func fetchProducts() -> AnyPublisher<[MarketPlaceData], Error> {
    
    oauth.client.get("http://185.97.114.171:8080/nova/wp-json/wc/v3/products") { result in
        switch result {
        case .success(let response):
            do {
                let jsonData = try JSONDecoder().decode([MarketPlaceData].self, from: response.data)
                print("Dokan Data:", jsonData)
                self.subject.send(jsonData)
                return
            }
            catch(let error) {
                print("Error with JSON parsing", error.localizedDescription)
                //subject.completion(.failure(error))
                return
            }
        case .failure(let error):
            print(error.localizedDescription)
            //subject.completion(.failure(error))
            return
        }
    }
    
    return subject
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
}
}
