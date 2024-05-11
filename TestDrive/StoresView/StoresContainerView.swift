//
//  StoresContainerView.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/9/24.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.headline)
            VStack(alignment: .leading, spacing: 30){
                ForEach(storesMock){ mock in
                    NavigationLink {
                        StoresDetailView(store: mock)
                    } label: {
                        StoresItemView(store: mock)
                    }

                    
                }
            }.foregroundColor(.black)
        }.padding(20)
    }
}

#Preview {
    StoresContainerView().previewLayout(.sizeThatFits)
}
