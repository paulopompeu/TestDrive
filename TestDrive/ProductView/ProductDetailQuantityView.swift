//
//  ProductDetailQuantityView.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/17/24.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    @State private var productQuantity = 0 /*use private for defensive programming
                                            avoid changes incoming from other ouside
                                            the scope */
    var body: some View {
        VStack (spacing: 16){
            Text("Quantidade")
                .bold()
                .font(.title3)
            HStack{
                Button{
                    if productQuantity > 0 {
                        productQuantity -= 1
                    }
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                Text("\(productQuantity)")
                    .font(.title2)
                    .bold()
                Button{
                    productQuantity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                }
            }
        }    }
}

#Preview {
    ProductDetailQuantityView()
}
