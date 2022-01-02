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
                    StorieItem(storie: st)
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

