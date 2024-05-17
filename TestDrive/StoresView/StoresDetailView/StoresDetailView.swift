//
//  SotresDetailView.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/10/24.
//

import SwiftUI

struct StoresDetailView: View {
    
    let store: StoreType
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                StoresDetailHeaderView(store: store)
                StoresDetailProductView(products: store.products)
                
            }
            
        }
        .navigationTitle(store.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss() //back action
                }, label: {
                    HStack(spacing: 4){
                        Image(systemName: "cart")
                        Text("Lojas")
                    }.foregroundColor(Color("ColorRed"))
                })
            }
        }
    } // pode ser omitida
}

#Preview {
    StoresDetailView(store: storesMock[0])
}
