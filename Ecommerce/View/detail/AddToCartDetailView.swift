//
//  AddToCartDetailView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 29/02/2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        Button(action: {
            feedbacks.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.body, design: .rounded))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            
            Spacer()
            
        })
        .padding(15)
        .background(
   Color(
    red: shop.selectedProduct?.red ?? sampleProduct.red,
    green: shop.selectedProduct?.green ?? sampleProduct.green,
    blue: shop.selectedProduct?.blue ?? sampleProduct.blue
   )
        )
        .clipShape(Capsule())
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    AddToCartDetailView()
        .environmentObject(Shop())
        .padding()
}
