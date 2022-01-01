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
            TopBarIcon(iconName: "plus.app")
            TopBarIcon(iconName: "heart")
            TopBarIcon(iconName: "message")
        }
        .padding(8)
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
