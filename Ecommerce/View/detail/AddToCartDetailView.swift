//
//  AddToCartDetailView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 29/02/2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - PROPERTIES
    
    
    //MARK: - BODY
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
    red: sampleProduct.red,
    green: sampleProduct.green,
    blue: sampleProduct.blue
   )
        )
        .clipShape(Capsule())
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    AddToCartDetailView()
        .padding()
}
