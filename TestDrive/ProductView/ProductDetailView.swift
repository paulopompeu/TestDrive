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
        VStack {
            ProductDetailHeaderView(product: product)
            Spacer()
            ProductDetailQuantityView()
            Spacer()
            
            ProductDetailButtonView()
        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}

struct ProductDetailButtonView: View {
    var body: some View {
        Button(action: {print("button pressed")}, label: {
            HStack(content: {
                Image(systemName: "cart")
                Text("Adicionar ao Carrinho")
            }).padding(.horizontal, 32)
                .padding(.vertical, 16)
                .font(.title3)
                .bold()
                .background(Color("ColorRed"))
                .foregroundColor(.white)
                .cornerRadius(32)
                .shadow(color: Color("ColorRedDark").opacity(0.5),radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:6,y:9 )
        })
    }
}
