//
//  ProductDetailHeaderView.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/12/24.
//

import SwiftUI

struct ProductDetailHeaderView: View {
    
    let product: ProductType
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16, content: {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 20)
            Text(product.name)
                .font(.title)
                .bold()
                .padding(.horizontal)
                .padding(.top)
            Text(product.description)
                .padding(.horizontal)
            Text(product.formattedPrice)
                .font(.title3)
                .bold()
                .padding(.horizontal)
        })
    }
}

#Preview {
    ProductDetailHeaderView(product: storesMock[0].products[0])
}
