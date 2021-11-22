//
//  FullImageCarousel.swift
//  ImageSlider
//
//  Created by Zhaniya  on 18.11.2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct MyCarousel: View {
    
    var body: some View {
        ScrollView {
            LazyHStack {
                FullImageCarousel()
            }
        }
    }
}

struct FullImageCarousel: View {
    @ObservedObject var viewModel = ProductViewModel()
    
    var body: some View {
        TabView {
            ForEach(viewModel.products) { item in
                ForEach(item.images) { image in
                        WebImage(url: URL(string: image.src))
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                    }
                    }.padding(.all, 10)
    }   .frame(width: UIScreen.main.bounds.width, height: 200)
        .tabViewStyle(PageTabViewStyle())
}
}


struct FullImageCarousel_Previews: PreviewProvider {
    static var previews: some View {
        MyCarousel()
    }
}
