//
//  Shop.swift
//  Touchdown
//
//  Created by Igor Efimov on 25.11.2021.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct = false
    @Published var selectedProduct:Product?
}
