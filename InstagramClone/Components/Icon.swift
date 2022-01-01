//
//  Icon.swift
//  InstagramClone
//
//  Created by Philippe-Antoine Ledoux on 2022-01-01.
//

import SwiftUI

struct Icon: View {
    var iconName: String
    var body: some View {
        Image(systemName: iconName)
            .font(Font.title3.weight(.medium))
    }
}

struct Icon_Previews: PreviewProvider {
    static var previews: some View {
        Icon(iconName: "heart")
    }
}
