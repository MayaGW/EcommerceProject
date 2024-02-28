//
//  CategoryGridView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 28/02/2024.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false,  content:{
            LazyHGrid(rows: gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: columnSpacing, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                Section(header:
                            SectionView(rotateClockwise: false),
                        footer:
                            SectionView(rotateClockwise: true)) {
                    ForEach(categories){ category in
                    CategoryItemView(category: category)
                    }
                }
            })//GRID
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        })//SCROLLVIEW
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CategoryGridView()
        .padding()
        .background(colorBackground)
}
 
