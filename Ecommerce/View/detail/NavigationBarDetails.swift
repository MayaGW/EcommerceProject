//
//  NavigationBarDetails.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 29/02/2024.
//

import SwiftUI

struct NavigationBarDetails: View {
    //MARK: - PROPERTIES
    
    
    @EnvironmentObject var shop: Shop
    var body: some View {
        HStack{
            Button(action: {
                withAnimation(.easeIn){
                    feedbacks.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
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
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
