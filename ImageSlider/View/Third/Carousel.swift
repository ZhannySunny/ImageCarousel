//
//  ImageCarousel.swift
//  ImageSlider
//
//  Created by Zhaniya  on 22.11.2021.
//

import SwiftUI

struct Carousel: View {
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = .lightGray
        UIPageControl.appearance().tintColor = .gray
    }
    
    var body: some View {
        TabView() {
            ForEach(1...5,id:\.self) { index in
                Image("b\(index)")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(.horizontal, 10)
                    .cornerRadius(20)
                    .offset(y: -35)
            }
            
        }
        .frame(height: 310)
        .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .tabViewStyle(PageTabViewStyle())
        .animation(.easeOut)

    }
    }


struct ImageCarousel_Previews: PreviewProvider {
    static var previews: some View {
        Carousel()
    }
}
