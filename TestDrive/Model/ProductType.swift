//
//  ProductType.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/10/24.
//

import Foundation

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$ " + price.formatPrice()
    }
}
