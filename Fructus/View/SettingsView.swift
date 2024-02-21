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
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
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
                             SettingsLabelView(labelText: "customisation", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical,4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        //:RESERT FEATURE
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8  ,style: .continuous))
                        )
                        
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
