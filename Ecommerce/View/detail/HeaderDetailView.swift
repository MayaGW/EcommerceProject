//
//  HeaderDetailView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 29/02/2024.
//

import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
        VStack(alignment:.leading, spacing: 6) {
            Text("Protectective Gear")
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }//VSTACK
        .foregroundColor(.white)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderDetailView()
        .padding()
        .background(Color.gray)
}
