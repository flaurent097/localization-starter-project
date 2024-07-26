//
//  ContentView.swift
//  Localization
//
//  Created by Felix Laurent on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    
    let clothes = [
        Clothes(name: String (localized: "Short Sleeve Polo Shirt"), brand: "Uniqlo", gender: String (localized: "Men"), price: 19.99, image: "one", description: String (localized: "Smooth and lightweight pique made from a blend of cotton and polyester."), availableSize: ["XS", "S", "M", "L", "XL"], numOfPromoDays: 1, numOfItemLeft: 2),
        Clothes(name: String (localized: "Oversize T-Shirt"), brand: "Uniqlo", gender: String (localized: "Unisex"), price: 8.99, image: "two", description: String (localized: "Half-sleeved T-shirt with wide fit and downhill shoulder accent"), availableSize: ["S", "M", "L", "XL", "XXL"], numOfPromoDays: 3, numOfItemLeft: 10),
        Clothes(name: String (localized: "Jersey Relax Jacket"), brand: "Uniqlo", gender: String (localized: "Women"), price: 29.99, image: "three", description: String (localized: "A jacket made of jersey that is comfortable to wear."), availableSize: ["XS", "S", "M", "L", "XL"], numOfPromoDays: 4, numOfItemLeft: 8),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(clothes) { item in
                        NavigationLink(
                            destination : ClothesDetailView(clothes: item),
                            label: {
                                ClothesCardView(clothes: item)
                            }
                        )
                    }
                }
                .foregroundColor(Color.black)
            }
            .background(Color(UIColor.systemGroupedBackground))
            .navigationTitle("Shop")
            .toolbar(content: {
                Image(systemName: "cart")
                    .bold()
            })
        }

    }
}

#Preview {
    ContentView()
}
