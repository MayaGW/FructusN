//
//  StartButtonView.swift
//  Fructus
//
//  Created by Maya Ghamloush on 19/02/2024.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        Button(action: {
            print("Exit the Onboarding")
        }, label: {
            HStack(spacing:8){
                Text("Start")
                    .accentColor(.white)
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
             
            }       .padding(.horizontal,16)
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
