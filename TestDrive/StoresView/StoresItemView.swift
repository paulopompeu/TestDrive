//
//  StoresItemView.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/9/24.
//

import SwiftUI

struct StoresItemView: View {
    
    let store: StoreType
    
    var body: some View {
        HStack {
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            VStack{
                Text(store.name)
                    .font(.subheadline)
            }
            Spacer() // ocupa os espacos a direita
        }
//        .onTapGesture {
//            print("clicou em \(order.name)")
//        }
    }
}

#Preview {
    StoresItemView(store: storesMock[0])
        .previewLayout(.sizeThatFits)
}
