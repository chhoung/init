//
//  ValidationView.swift
//  sample
//      
//  Copyright © 2024 initializing go home machine. All rights reserved.
//  
import SwiftUI

struct LoginScreen: View {
    @AppStorage("isLoggedIn") var isLoggedIn = false
    @State var searchText: String = ""
    @State var isLoading: Bool = false
    @State var showDialog: Bool = false
    @State var success: Bool = false
    
    var isValid: Bool {
        return !searchText.isEmpty
    }
    
    var disabled: Bool {
        return !isValid || isLoading
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
            .disabled(disabled)
        }
        .alert("Your password is not correct ❌, Please try again!", isPresented: $showDialog, actions: {
            Button("OK", role: .cancel) {}
        })
        .alert("Success ✅", isPresented: $success, actions: {
            Button(action: {
                navigateToHome()
            }, label: {
                Text("OK")
            })
        })
        .padding(.horizontal)
        .frame(maxHeight: .infinity)
        .background(Color.black)
    }
}

extension LoginScreen {
    private func login() {
        Task {
            isLoading = true
            try await Task.sleep(nanoseconds: 2000000000)
            
            if searchText == correctPassword {
                success = true
            } else {
                showDialog = true
            }
            
            isLoading = false
        }
    }
    
    private func navigateToHome() {
        success = false
        print("Navigation to home screen....")
        isLoggedIn = true
    }
}

let correctPassword = "123456"

#Preview {
    LoginScreen()
}
