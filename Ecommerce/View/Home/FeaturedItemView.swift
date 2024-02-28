//
//  FeaturedItemView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 28/02/2024.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTIES
    let player: Player
    
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
             
    }
}

 
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
       
        // Use static variable in preview
        FeaturedItemView(player: players[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
