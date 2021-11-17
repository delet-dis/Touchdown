//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Igor Efimov on 17.11.2021.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
