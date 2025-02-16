//
//  sampleApp.swift
//  sample
//
//  Created by initializing go home machine on 7/9/2024.
//

import SwiftUI

@main
struct sampleApp: App {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                if isLoggedIn {
                    MainScreen()
                } else {
                    LoginScreen()
                }
            }
        }
    }
}
