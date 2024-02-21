//
//  SettingsView.swift
//  Fructus
//
//  Created by Maya Ghamloush on 20/02/2024.
//

import SwiftUI

/// <#Description#>
struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    //MARK: - BODY
    /// <#Description#>
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing:20) {
                //MARK: - SECTION 1
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    
                    ) {
                        Divider().padding(.vertical,2)
                        HStack(alignment:.center,spacing: 10){
                            Image(.logo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80,alignment: .center)
                                .cornerRadius(20)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                              .font(.footnote)
                            
                        }//:HSTACK
                        
                    }//:GROUP BOX 1
                    
                    
                //MARK: - SECTION 2
                    GroupBox(
                        label:
                             SettingsLabelView(labelText: "customisation", labelImage: "")
                    ) {
                        
                     }//GROUP BOX 2
                    
                    
                //MARK: - SECTION 3
                    
                    GroupBox(
                        label:
                             SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                    
                        
                          SettingsRowView(name: "Developer", content: "John / Jane")
                          SettingsRowView(name: "Designer", content: "Robert Petras")
                          SettingsRowView(name: "Compatibility", content: "iOS 14")
                          SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                          SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                          SettingsRowView(name: "SwiftUI", content: "2.0")
                          SettingsRowView(name: "Version", content: "1.1.0")
                        }
                     }//GROUP BOX 3
                    
                    
                }//:VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                
                )
                .padding()
            }//:SCROLL VIEW
        }//:NAVIGATION VIEW
    }

//MARK: - PREVIEW
#Preview {
    SettingsView()
}
