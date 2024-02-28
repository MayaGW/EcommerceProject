//
//  CategoryItemView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 28/02/2024.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - PROPERTIES
    let category: Category
    //MARK: - BODY
    var body: some View {
        Button(action: {
            
        }, label: {
           HStack {
               Image(category.image)
                   .renderingMode(.template)
                   .resizable()
                   .scaledToFit()
                   .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                   .foregroundColor(.gray)
               Text(category.name.uppercased())
                   .fontWeight(.light)
                   .foregroundColor(.gray)
               
               Spacer()
               
            }//HSTACK
           .padding()
           .background(Color.white.cornerRadius(12))
           .background(
           RoundedRectangle(cornerRadius: 12)
            .stroke(Color.gray, lineWidth: 1)
           )
        })//BUTTON
    }
}

 struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
       
        // Use static variable in preview
        CategoryItemView(category: categories[1])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
