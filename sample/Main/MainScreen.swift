//
//  MainScreen.swift
//  sample
//      
//  Copyright © 2024 initializing go home machine. All rights reserved.
//  

import SwiftUI

struct MainScreen: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house.fill") {
                HomeScreen()
            }
          
            Tab("Profile", systemImage: "person.crop.circle") {
                ProfileScreen()
            }
        }
        .tint(.gray)
    }
}

#Preview {
    MainScreen()
}
