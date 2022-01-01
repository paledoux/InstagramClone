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
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .overlay(Circle().stroke(LinearGradient(colors: [Color.red, Color.blue], startPoint: UnitPoint.leading, endPoint: .trailing), lineWidth: 2))
            
            Text(name)
                .font(.caption2)
        }
        .padding(.top, 4)
        .padding(.leading, 4)
    }
}

struct StorieItem_Previews: PreviewProvider {
    static var previews: some View {
        StorieItem(imageName: "Ruffles", name: "Your Story")
    }
}
