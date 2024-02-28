//
//  SectionView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 28/02/2024.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTIES
    @State   var rotateClockwise: Bool
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing:0){
            
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        }//VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

//#Preview(traits: .sizeThatFitsLayout){
//    SectionView()
//}
#Preview(traits: .fixedLayout(width: 120, height: 240)) {
    SectionView(rotateClockwise: false)
        .padding()
        .background(colorBackground)
}
