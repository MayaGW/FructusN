//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Maya Ghamloush on 19/02/2024.
//

import SwiftUI

struct OnBoardingView: View {
    
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    
    
    var body: some View {
        TabView {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                FruitCardVuew()
            }//:LOOP
        }//:TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}
//MARK: - PREVIEWS
#Preview {
    OnBoardingView()
}
