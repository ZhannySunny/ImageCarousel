//
//  ForTest.swift
//  ImageSlider
//
//  Created by Zhaniya  on 18.11.2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageParsing: View {
    @ObservedObject var viewModel = ProductViewModel()
    
    var body: some View {
        ScrollView {
            ForEach(viewModel.products) { item in
                ForEach(item.images) { image in
                        WebImage(url: URL(string: image.src))
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                }
 
        }
    }
    }
}



struct ForTest_Previews: PreviewProvider {
    static var previews: some View {
        ImageParsing()
    }
}
