//
//  StoresDetailHeaderView.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/12/24.
//

import SwiftUI

struct StoresDetailHeaderView: View {
    
    let store: StoreType
    
    var body: some View {
        VStack{
            Image(store.headerImage)
                .resizable()
                .scaledToFit()
                                
          HStack {
                Text(store.name)

                      .font(.title)
                     .fontWeight(.bold)

                    Spacer()

                    Image(store.logoImage)
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
             
             HStack{
                 Text(store.location)

                Spacer()

                 ForEach(1...store.stars, id: \.self) { _ in
                    Image(systemName: "star.fill")
                         .foregroundColor(.yellow)
                         .font(.caption)
                }
             }
                .padding(.vertical, 8)
                .padding(.horizontal)

        }
    }
}

#Preview {
    StoresDetailHeaderView(store: storesMock[0])
}
