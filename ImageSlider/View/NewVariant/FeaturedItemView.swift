//
//  FeaturedItemView.swift
//  ImageSlider
//
//  Created by Zhaniya  on 18.11.2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct FeaturedItemView: View {
    let item: ProductImage
    
    var body: some View {
        WebImage(url: URL(string: item.src))
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
    }
}

//struct FeaturedItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeaturedItemView(item: <#ProductImage#>)
//    }
//}
