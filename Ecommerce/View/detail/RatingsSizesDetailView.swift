//
//  RatingsSizesDetailView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 29/02/2024.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    //MARK: - PROPERTIES
    let sizes: [String] = ["XS","S","M","L","XL"]
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .top,spacing: 3, content: {
            //RATINGS
            VStack(alignment: .leading, spacing: 3,   content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 3, content: {
                    ForEach(1...5,id: \.self){ item in
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                   
                })//HSTACK
                
            })//Vstack RATINGS
            
           Spacer()
            //SIZES
            
            
            VStack(alignment: .trailing, spacing: 3){
                
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
             
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5, content: {
                    ForEach(sizes,id: \.self){size in
                        Button(action: {
                            
                        }, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(
                                    Color.white.cornerRadius(5)
                                )
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray,lineWidth: 2)
                                )
                             
                        })
                    }//LOOP
                })
                
            }//VSTACK SIZES
        })//HSTACK
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RatingsSizesDetailView()
        .padding()
}