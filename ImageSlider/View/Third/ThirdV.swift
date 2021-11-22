//
//  ThirdV.swift
//  ImageSlider
//
//  Created by Zhaniya  on 19.11.2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct ThirdV: View {
    @ObservedObject var viewModel = ProductViewModel()
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = .lightGray
        UIPageControl.appearance().tintColor = .gray
    }
    
    var body: some View {
        TabView() {
              ForEach(viewModel.products) { item in
                    ForEach(item.images) { image in
              WebImage(url: URL(string: image.src))
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(.horizontal, 10)
                    .cornerRadius(20)
                    .offset(y: -35)
            }
        }
    }.frame(height: 310)
     .padding(.all, 10)
     .tabViewStyle(PageTabViewStyle())
 }
}



struct ThirdV_Previews: PreviewProvider {
    static var previews: some View {
        ThirdV()
    }
}
