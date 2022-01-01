//
//  ContentView.swift
//  InstagramClone
//
//  Created by Philippe-Antoine Ledoux on 2021-12-31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                TopBar()
                ScrollView(showsIndicators: false){
                    Stories()
                    Divider()
                    
                    ForEach(posts, id: \.self) { po in
                        Post(post: po)
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}


struct PostModel: Hashable {
    var profilImageName: String
    var userName: String
    var postPicturename: String
    var numLikes: Int
}

var posts : [PostModel] = [PostModel(profilImageName: "Ruffles", userName: "Ruffles", postPicturename: "car", numLikes: 124), PostModel(profilImageName: "Ruffles", userName: "Ken", postPicturename: "postPicture2", numLikes: 12)]
