//
//  StoresContainerView.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/9/24.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    @State private var ratingFilter = 0
    
    var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text(title)
                    .font(.headline)
                Spacer()
                
                Menu("Filter"){
                    Button(action: {
                        ratingFilter = 0
                    }
                           , label: {
                        Text("Clear Filter")
                    })
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self){ rating in
                        Button(action: {
                            ratingFilter = rating
                        }, label: {
                            if rating > 1 {
                                Text("\(rating) stars or more")
                            } else
                            {
                                Text("\(rating) star or more")
                            }
                        })
                    }


                }.foregroundColor(.black)
            }
            VStack(alignment: .leading, spacing: 30){
                if filteredStores.isEmpty {
                    Text("No stores found")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                        .onTapGesture {
                            ratingFilter = 0
                        }
                } else {
                    ForEach(filteredStores){ mock in
                        NavigationLink {
                            StoresDetailView(store: mock)
                        } label: {
                            StoresItemView(store: mock)
                        }
                    }
                }
            }.foregroundColor(.black)
        }.padding(20)
    }
}

#Preview {
    StoresContainerView().previewLayout(.sizeThatFits)
}
