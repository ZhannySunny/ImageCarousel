//
//  ImageSlider.swift
//  ImageSlider
//
//  Created by Zhaniya  on 19.11.2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct Full: View {
    var body: some View {
        ImageSlider()
            .frame(height: 300)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}


struct ImageSlider: View {
    
    @ObservedObject var viewModel = ProductViewModel()
    
    var body: some View {
        TabView {
            ForEach(viewModel.products) { item in
                ForEach(item.images) { image in
                    WebImage(url: URL(string: image.src))
                        .resizable()
                        .scaledToFill()
                }
            }
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct ImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        ImageSlider()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
