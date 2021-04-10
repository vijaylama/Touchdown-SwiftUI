//
//  Shop.swift
//  Touchdown
//
//  Created by Vijay Lama on 4/10/21.
//

import Foundation
class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
