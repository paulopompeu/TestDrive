//
//  CarouselTabView.swift
//  TestDrive
//
//  Created by Paulo P T Oliveira on 5/9/24.
//

import SwiftUI

struct CarouselTabView: View {
    
    let ordersMock: [OrderType] = [
    OrderType(id: 1, name: "banner-burguer", image: "barbecue-banner"),
    OrderType(id: 2, name: "brazilian-meal-banner", image: "brazilian-meal-banner"),
    OrderType(id: 3, name: "pokes-banner", image: "pokes-banner"),
    ]
    var body: some View {
        TabView{
            ForEach(ordersMock){
                mock in CarouselItemView(order: mock)
            }
        }.frame(height: 180)
            .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselTabView()
}
