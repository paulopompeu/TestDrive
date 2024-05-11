//
//  ProductDetailView.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/10/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    
    var body: some View {
        Text(product.name)
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}
