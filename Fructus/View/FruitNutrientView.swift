//
//  FruitNutrientView.swift
//  Fructus
//
//  Created by Maya Ghamloush on 20/02/2024.
//

import SwiftUI

struct FruitNutrientView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    //MARK: - BODY
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g"){
                
                
                ForEach(0..<nutrients.count,id:\.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }.foregroundColor(fruit.gradientColors[1])
                            .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }}
        }//groupbox
    }
}
//MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 400)) {
    FruitNutrientView(fruit: fruitsData[0])
}
