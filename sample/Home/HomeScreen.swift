//
//  ContentView.swift
//  sample
//
//  Created by initialize go home machine on 7/9/2024.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack {
            Color.clear.background(background)
            
            VStack {
                ScrollView {
                    Spacer().frame(height: 30)
                    
                    ForEach(Item.stub()) { item in
                        NavigationLink {
                            DetailScreen(item: item)
                        } label: {
                            ListItemView(item: item)
                        }
                    }
                }
            }
        }
    }
}

extension HomeScreen {
    var background: some View {
        Image("m1")
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            .blur(radius: 2, opaque: true)
    }
}

#Preview {
    NavigationStack {
        HomeScreen()
    }
}
