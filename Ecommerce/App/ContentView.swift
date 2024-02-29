//
//  ContentView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 27/02/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing:0){
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
                    ScrollView(.vertical,showsIndicators: false,content: {
                        VStack(spacing:0){
                            
                            FeaturedTabView()
                                .frame(minHeight: 256)
                                .padding(.vertical,10)
                            CategoryGridView()
                            TitleView(title: "Helmet")
                            LazyVGrid(columns: gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                                ForEach(products){ product in
                                    
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedbacks.impactOccurred()
                                            shop.selectedProduct = product
                                            shop.showingProduct = true
                                        }
                                }//LOOP
                            })//GRID
                          TitleView(title: "Brands")
                            BrandGridView()
                            FooterView()
                              .padding(.horizontal)
                        }//VSTACK
                    })//SCROLLVIEW
                      
                 
                    
                    
                    
                     
                }//VSTACK
                .background(colorBackground.ignoresSafeArea(.all,edges: .all))
            } else {
                ProductDetailView()
            }
        }//ZSTACK
        .ignoresSafeArea(.all,edges: .top)
    }
}
//MARK: -  PREVIEW
#Preview {
    ContentView()
        .environmentObject(Shop())
}

