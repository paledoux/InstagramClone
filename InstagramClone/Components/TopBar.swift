//
//  TopBar.swift
//  InstagramClone
//
//  Created by Philippe-Antoine Ledoux on 2021-12-31.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack{
            Image("IG logo")
            Spacer()
            HStack(spacing: 20){
                
                Icon(iconName: "plus.app")
                Icon(iconName: "heart")
                NavigationLink(destination: MessageView()){
                    Icon(iconName: "message")
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal, 8)
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
