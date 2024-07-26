//
//  ClothesCardView.swift
//  Localization
//
//  Created by Felix Laurent on 26/07/24.
//

import SwiftUI

struct ClothesCardView: View {
    
    let clothes: Clothes
    
    var body: some View {
        VStack (alignment: .leading){
            Image(clothes.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity)
                .clipped()
            
            Text(clothes.name)
                .font(.title3)
                .fontWeight(.semibold)
                .padding([.top, .horizontal])
            
            Text(clothes.brand)
                .font(.subheadline)
                .padding(.horizontal)
            
            Text(clothes.price.formatted(.currency(code: "USD")))
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .padding()
            
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    ClothesCardView(clothes: Clothes(name: String (localized: "Short Sleeve Polo Shirt"), brand: "Uniqlo", gender: String (localized: "Men"), price: 19.99, image: "one", description: String (localized: "Smooth and lightweight pique made from a blend of cotton and polyester."), availableSize: ["XS", "S", "M", "L", "XL"], numOfPromoDays: 1, numOfItemLeft: 2))
}
