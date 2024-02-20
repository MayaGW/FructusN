//
//  ContentView.swift
//  Fructus
//
//  Created by Maya Ghamloush on 18/02/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        ListRowView(fruit: item)
                            .padding(.vertical,4)
                        
                    }
                }//:FOR EACH
            }.navigationTitle("FRUITS") //:LIST
            
        }//:NAVIGATION VIEW
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
