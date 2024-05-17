//
//  StoresDetailProductView.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/12/24.
//

import SwiftUI

struct StoresDetailProductView: View {
    let products: Array<ProductType>
    @State private var selectedProduct: ProductType?
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Produtos").font(.title2).bold().padding()
            
            ForEach(products){
                product in
                
                Button{
                    selectedProduct = product
                } label: {
                    StoresDetailProductItemView(product: product)
                }
                .sheet(item: $selectedProduct) { product in
                    ProductDetailView(product: product)
                }
            }
        }
    }
}

#Preview {
    StoresDetailProductView(products: storesMock[0].products)
}
