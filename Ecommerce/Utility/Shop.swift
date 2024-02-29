//
//  Shop.swift
//  Ecommerce
//
//  Created by Maya Ghamloush on 29/02/2024.
//

import Foundation
class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
