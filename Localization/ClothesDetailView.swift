//
//  ClothesDetailView.swift
//  Localization
//
//  Created by Felix Laurent on 26/07/24.
//

import SwiftUI

struct ClothesDetailView: View {
    var clothes: Clothes
    @State var selectedSize: String = "M"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                ZStack(alignment: .leading) {
                    Image(clothes.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, minHeight: 300)
                        .background(.yellow)
                    
                    VStack{
                        Spacer()
                        HStack{
                            Image(systemName: "tag")
                                .padding(.leading, 18)
                            Text("Christmas Sale!")
                                .font(.system(size: 14))
                                .fontWeight(.medium)
                            
                            Spacer()
                            Text("\(clothes.numOfPromoDays) days left")
                                .font(.system(size: 14))
                                .fontWeight(.medium)
                                .padding(.trailing, 18)
                        }.padding(8)
                            .background(.thinMaterial)
                        
                    }
                }
                VStack(alignment: .leading){
                    HStack {
                        VStack  (alignment: .leading){
                            Text(clothes.brand)
                                .font(.subheadline)
                            Text(clothes.name)
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text(clothes.gender)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "heart")
                            .foregroundColor(.red)
                            .padding()
                    }
                    
                    HStack{
                        Text(clothes.price.formatted())
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.top, 8)
                        Text("USD" + (clothes.price * 1.2).formatted())
                            .strikethrough(true, color: .gray)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .padding(.top, 8)
                        Text("20% off")
                            .font(.subheadline)
                            .foregroundColor(.red)
                            .padding(.top, 8)
                    }
                    
                    Text("Size")
                        .font(.headline)
                        .padding(.top, 16)
                    
                    Picker("What is your size?", selection: $selectedSize) {
                        ForEach(clothes.availableSize, id: \.self){
                            Text($0).tag($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    Text("\(clothes.numOfItemLeft) item left")
                        .font(.custom("SF Pro", size: 13, relativeTo: .body))
                        .foregroundColor(.red)
                    
                    Text("Description")
                        .font(.headline)
                        .padding(.top, 16)
                    Text(clothes.description)
                        .font(.body)
                    
                    Spacer()
                }.padding()
                Divider()
                HStack{
                    Image(systemName: "cart")
                        .foregroundColor(.blue)
                        .padding()
                    
                    Button(action: {}, label: {
                        Text("Buy Now")
                            .foregroundColor(.white)
                    })
                    .buttonStyle(BorderedButtonStyle())
                    .frame(width: 300, height: 50)
                    .background(.blue)
                    .cornerRadius(16)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ClothesDetailView(clothes: Clothes(name: String (localized: "Short Sleeve Polo Shirt"), brand: "Uniqlo", gender: String (localized: "Men"), price: 19.99, image: "one", description: String (localized: "Smooth and lightweight pique made from a blend of cotton and polyester."), availableSize: ["XS", "S", "M", "L", "XL"], numOfPromoDays: 1, numOfItemLeft: 2))
}
