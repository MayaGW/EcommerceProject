//
//  ProductItemView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 28/02/2024.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPERTIES
    let product: Product
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
           //PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
              
            }//ZSTACK
            .background(Color(red:product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            //NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            //PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })//VSTACK
        .padding()
        
    }
}

 
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
 
        // Use static variable in preview
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300)) // Set size to fit in Xcode 15
    }
}
