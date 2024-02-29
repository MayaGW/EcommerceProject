//
//  HeaderDetailView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 29/02/2024.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment:.leading, spacing: 6) {
            Text("Protectective Gear")
            Text(shop.selectedProduct?.name ??   sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }//VSTACK
        .foregroundColor(.white)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderDetailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
