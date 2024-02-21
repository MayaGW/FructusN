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
    @State private var isShowingSettings: Bool = false
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
                .navigationBarItems(trailing:
                 Button(action: {
                    isShowingSettings = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                }).sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
                
                )
            
        }//:NAVIGATION VIEW
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
