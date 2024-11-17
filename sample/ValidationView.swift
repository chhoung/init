//
//  ValidationView.swift
//  sample
//      
//  Copyright © 2024 initializing go home machine. All rights reserved.
//  
import SwiftUI

struct ValidationView: View {
    @State var searchText: String = ""
    @State var isLoading: Bool = false
    
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
                login()
            } label: {
                Text(isLoading ? "" : "Login")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color.accentColor)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8, height: 0)))
                    .overlay {
                        if isLoading {
                            ProgressView()
                        }
                    }
            }
            .disabled(!isValid)
        }
        .padding(.horizontal)
        .frame(maxHeight: .infinity)
        .background(Color.black)
    }
}

extension ValidationView {
    private func login() {
        Task {
            isLoading = true
            try await Task.sleep(nanoseconds: 2000000000)
            
            if searchText == correctPassword {
                print("Success login")
            } else {
                print("Error")
            }
            
            isLoading = false
        }
    }
}

let correctPassword = "123456"

#Preview {
    ValidationView()
}
