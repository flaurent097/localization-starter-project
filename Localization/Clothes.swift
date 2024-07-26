//
//  Product.swift
//  Localization
//
//  Created by Felix Laurent on 26/07/24.
//

import Foundation

struct Clothes: Identifiable {
    var id = UUID()
    var name: String
    var brand: String
    var gender: String
    var price: Double
    var image: String // Image name or URL
    var description: String
    var availableSize: [String]
    var numOfPromoDays: Int
    var numOfItemLeft: Int
}

