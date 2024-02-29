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
            //DETAIL BOTTOM PART
            //RATINGS + SIZES
            //DESCRIPTION
            //QUANTITY + FAVORIES
            //ADD TO CART
            Spacer()
        }//VSTACK
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
