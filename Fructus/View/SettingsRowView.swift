//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Maya Ghamloush on 21/02/2024.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical,2)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!,destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else{
                    EmptyView()
                }
            }
        }
    }
}
//MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 60)) {
    SettingsRowView(name: "Developper", content: "John/jane")
        .padding()
}

//MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 60)) {
 SettingsRowView(name: "Website",linkLabel: "switfui Master Class",linkDestination: "swiftuimasterclass.com")
        .padding()
}