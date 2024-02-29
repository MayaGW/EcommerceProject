//
//  ProductDetailView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 29/02/2024.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //NAVBAR
            NavigationBarDetails()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
            //DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            //DETAIL BOTTOM PART
            VStack(alignment: .center,spacing:0 , content: {
                //RATINGS + SIZES
                RatingsSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                
                //DESCRIPTION
                ScrollView(.vertical) {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }//SCROLL
                //QUANTITY + FAVORIES
                QuantityFavoriteDetailView()
                    .padding(.vertical,10)
                
                //ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom,20)
            })//VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top,-105)
            )
 
            Spacer()
        }//VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 812)) {
    ProductDetailView()
}
