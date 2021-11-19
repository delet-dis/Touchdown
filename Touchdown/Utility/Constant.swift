//
//  Constant.swift
//  Touchdown
//
//  Created by Igor Efimov on 14.11.2021.
//

import SwiftUI

var players: [Player] = Bundle.main.decode("player.json")
var categories: [Category] = Bundle.main.decode("category.json")
var products: [Product] = Bundle.main.decode("product.json")

var colorBackground = Color("ColorBackground")
var colorGray = Color(UIColor.systemGray4)

var columnSpacing: CGFloat = 10
var rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
