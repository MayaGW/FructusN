//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Maya Ghamloush on 20/02/2024.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: .center,spacing: 20){
                    //:HEADER
                    
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment:.leading,spacing: 20){
                        //:TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //:HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        //:NUTRIENT
                        
                        //:SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .foregroundColor(fruit.gradientColors[1])
                        //:DESCRIPTION
                        
                        Text(fruit.description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        //:LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                        
                    }//:VSTACK
                    
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                    
                }//:VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//:SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }//:END OF NAVIGATION
    }
}
//MARK: - PREVIEW
#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
