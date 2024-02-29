//
//  NavigationBarDetails.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 29/02/2024.
//

import SwiftUI

struct NavigationBarDetails: View {
    var body: some View {
        HStack{
            Button(action: {
                
            }, label: {
               Image(systemName: "chevron.left")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            })//BUTTON
            Spacer()
            Button(action: {
                
            }, label: {
               Image(systemName: "cart")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            })//BUTTON
        }//Hstack
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationBarDetails()
        .padding()
        .background(Color.gray)
}
