//
//  Stories.swift
//  InstagramClone
//
//  Created by Philippe-Antoine Ledoux on 2021-12-31.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16){
                ForEach(stories, id: \.self) { st in
                    StorieItem(imageName: st.imageName, name: st.name)
                }
            }
        }
        .padding(.leading,6)
    }
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
    }
}

struct Storie: Hashable {
    var imageName: String
    var name: String
}

var stories = [Storie(imageName: "Ruffles", name: "Your Story"),Storie(imageName: "Ruffles", name: "Phil"),Storie(imageName: "Ruffles", name: "Samuel"),Storie(imageName: "Ruffles", name: "Ken"),Storie(imageName: "Ruffles", name: "Laurence"),Storie(imageName: "Ruffles", name: "Lucie"),Storie(imageName: "Ruffles", name: "Jean-Francois")]
