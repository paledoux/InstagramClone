//
//  StorieItem.swift
//  InstagramClone
//
//  Created by Philippe-Antoine Ledoux on 2021-12-31.
//

import SwiftUI

struct StorieItem: View {
    var imageName: String
    var name: String
    
    var body: some View {
        VStack{
            Image(imageName)
                .cornerRadius(50)
            Text(name)
                .font(.caption2)
        }
    }
}

struct StorieItem_Previews: PreviewProvider {
    static var previews: some View {
        StorieItem(imageName: "Ruffles", name: "Your Story")
    }
}
