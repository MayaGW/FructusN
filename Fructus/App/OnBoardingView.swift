//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Maya Ghamloush on 19/02/2024.
//

import SwiftUI

struct OnBoardingView: View {
    
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    //MARK: - BODY
    
    
    
    var body: some View {
        TabView {
            ForEach(fruits) { item in
                
                FruitCardVuew(fruit: item)
            }//:LOOP
        }//:TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}
//MARK: - PREVIEWS
#Preview {
    OnBoardingView(fruits: fruitsData)
}
