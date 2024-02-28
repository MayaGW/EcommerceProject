//
//  TitleView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 28/02/2024.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPERTIES
    var title: String
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            Spacer()
        }//HSTACK
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    TitleView(title: "Helmet")
        .padding()
        .background(colorBackground)
}
