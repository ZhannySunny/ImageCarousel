//
//  MainView.swift
//  ImageSlider
//
//  Created by Zhaniya  on 18.11.2021.
//

//import SwiftUI
//import SDWebImageSwiftUI
//
//struct MainView: View {
//    var body: some View {
//        ImageCarousel()
//}
//}
//
//struct ImageCarousel: View {
//    
//    var body: some View {
//        ScrollView {
//            LazyHStack {
//                PageView()
//            }
//            Text("Hiiii")
//        }
//    }
//}
//
//
//struct PageView: View {
//    
//    let images = ["b1", "b2", "b3", "b4", "b5"]
//        @ObservedObject var viewModel = ProductViewModel()
//        
//        var body: some View {
//            TabView {
//                ForEach(images, id:\.self) { i in
//                            ZStack {
//                                Color.black
//                                Image(i)
//                                    .resizable()
//                                    .frame(height: 200, alignment: .center)
//                            }
//                    
//                            //.clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
//                        }
//                        .padding(.all, 10)
//                    }
//                    .frame(width: UIScreen.main.bounds.width, height: 200)
//                    .tabViewStyle(PageTabViewStyle())
//    }
//}
//
//
//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
