//
//  ListItemView.swift
//  sample
//      
//  Copyright © 2024 initializing go home machine. All rights reserved.
//  

import SwiftUI

struct ListItemView: View {
    
    let item: Item
    
    var body: some View {
        HStack {
            Image(item.image)
                .resizable()
                .frame(width: 120, height: 160)
                .scaledToFill()
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(item.title)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(item.dimension)
                    .foregroundStyle(.white)
                
                Spacer()
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

#Preview {
    ListItemView(item: Item.stub()[0])
        .background(Color.black)
}
