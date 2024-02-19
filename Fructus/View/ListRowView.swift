//
//  ListRowView.swift
//  Fructus
//
//  Created by Maya Ghamloush on 19/02/2024.
//

import SwiftUI
struct ListRowView: View {
    //MARK: - PROPERTIES
    var fruit : Fruit
    //MARK: - BODY
    var body: some View {
        HStack(){
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80,alignment: .center)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 3,x: 2,y: 2)
                .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
         
            VStack(alignment: .leading,spacing: 5){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
            }//:VSTACK
           
        }//:HSTACK
    }
}
//MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    ListRowView(fruit: fruitsData[1])
}
