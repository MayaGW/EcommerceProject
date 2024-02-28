//
//  FooterView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 28/02/2024.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack (alignment:.center,spacing:20){
            Text("we offer the most cutting ede, comfortable,lightweight and durable football helmets in the market at affordable prices")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image(.logoLineal)
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
                .layoutPriority(0)
            Text("Copyright © Maya Ghamloush\nAll right reserved")
                .font(.footnote)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        }//VSTACK
        .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FooterView()
        .background(colorBackground)
}
