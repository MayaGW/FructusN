//
//  FructusApp.swift
//  Fructus
//
//  Created by Maya Ghamloush on 18/02/2024.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            }else
            {
                ContentView()
            }
           
        }
    }
}
