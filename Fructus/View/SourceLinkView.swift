//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Maya Ghamloush on 20/02/2024.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
               Text("Content source")
                Spacer()
                Link("wikipedia",destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//:END OF HSTACK
            .font(.footnote)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SourceLinkView()
        .padding()
}
