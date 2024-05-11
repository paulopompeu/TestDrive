//
//  StoreType.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/10/24.
//

import Foundation

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
