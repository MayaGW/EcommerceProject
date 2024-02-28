//
//  ContentView.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 27/02/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing:0){
                NavigationBarView()
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
                Spacer()
                  FooterView()
                    .padding(.horizontal)
            }//VSTACK
            .background(colorBackground.ignoresSafeArea(.all,edges: .all))
        }//ZSTACK
        .ignoresSafeArea(.all,edges: .top)
    }
}
//MARK: -  PREVIEW
#Preview {
    ContentView()
}

