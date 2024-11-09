//
//  ValidationView.swift
//  sample
//      
//  Copyright © 2024 initializing go home machine. All rights reserved.
//  
import SwiftUI

struct ValidationView: View {
    @State var searchText: String = ""
    
    var isValid: Bool {
        return !searchText.isEmpty
    }
    
    var body: some View {
        VStack {
            TextField(text: $searchText, prompt: Text("Password")) {}
                .padding(.horizontal)
                .frame(height: 48)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8, height: 0)))
           
            Spacer().frame(height: 16)
            
            Button {
                
            } label: {
                Text("Login")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color.accentColor)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8, height: 0)))
            }
            .disabled(!isValid)
        }
        .padding(.horizontal)
        .frame(maxHeight: .infinity)
        .background(Color.black)
    }
}

#Preview {
    ValidationView()
}
