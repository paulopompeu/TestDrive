//
//  ProductDetailView.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/10/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    @State private var productQuantity = 0 /*use private for defensive programming
                                            avoid changes incoming from other ouside
                                            the scope */
    var body: some View {
        VStack {
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
            Spacer()
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
            }
            Spacer()
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
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}
