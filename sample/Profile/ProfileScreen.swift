//
//  ProfileScreen.swift
//  sample
//      
//  Copyright © 2024 initializing go home machine. All rights reserved.
//  

import SwiftUI

struct ProfileScreen: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    var body: some View {
        VStack(alignment: .center) {
            Button {
                isLoggedIn = false
            } label: {
                Text("Logout")
                    .padding()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    ProfileScreen()
}
