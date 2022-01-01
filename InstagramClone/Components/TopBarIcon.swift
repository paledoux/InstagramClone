//
//  TopBarIcon.swift
//  InstagramClone
//
//  Created by Philippe-Antoine Ledoux on 2021-12-31.
//

import SwiftUI

struct TopBarIcon: View {
    var iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .resizable()
            .frame(width: 18, height: 18)
            .padding(6)
    }
}

struct TopBarIcon_Previews: PreviewProvider {
    static var previews: some View {
        TopBarIcon(iconName: "heart")
    }
}
