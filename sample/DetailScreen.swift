//
//  DetailScreen.swift
//  sample
//      
//  Copyright © 2024 initializing go home machine. All rights reserved.
//  

import SwiftUI

struct DetailScreen: View {
    let item: Item
    
    var body: some View {
        ScrollView {
            VStack {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 300)
                
                Text(item.title)
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
                
                Text(item.dimension)
                    .foregroundStyle(.white)
                
                
                Text(item.description)
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
            }
            .padding(.vertical, 16)
        }
        .background(background)
    }
}

extension DetailScreen {
    var background: some View {
        Image(item.image)
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            .blur(radius: 16, opaque: true)
    }
}

#Preview {
    DetailScreen(item: Item.stub()[1])
}
