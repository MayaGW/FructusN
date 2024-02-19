//
//  StartButtonView.swift
//  Fructus
//
//  Created by Maya Ghamloush on 19/02/2024.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    //MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
            print("Exit the Onboarding")
        }, label: {
            HStack(spacing:8){
                Text("Start")
                 
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
         
             
            }      
            .foregroundColor(.white)
            .padding(.horizontal,16)
                .padding(.vertical,10)
                .background(
                    Capsule().strokeBorder(.white,lineWidth: 1.25)
                )
        })
    }
}
//MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout){
    StartButtonView()
}
