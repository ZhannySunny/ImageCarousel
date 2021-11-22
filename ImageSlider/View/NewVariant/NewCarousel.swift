//
//  NewCarousel.swift
//  ImageSlider
//
//  Created by Zhaniya  on 18.11.2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewCarousel: View {
    @ObservedObject var viewModel = ProductViewModel()
    var body: some View {
        TabView {
            ForEach(viewModel.products) { item in
                ForEach(item.images) { image in
                    FeaturedItemView(item: image)
        }
    }
}
        //:TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode:.always))
}
}

struct NewCarousel_Previews: PreviewProvider {
    static var previews: some View {
        NewCarousel()
    }
}
