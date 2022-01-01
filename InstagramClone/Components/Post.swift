//
//  Post.swift
//  InstagramClone
//
//  Created by Philippe-Antoine Ledoux on 2022-01-01.
//

import SwiftUI

struct Post: View {
    
    var post: PostModel
    
    var body: some View {
        VStack{
            HStack{
                NavigationLink(destination: ProfilView()){
                    Image(post.profilImageName)
                        .resizable()
                        .frame(width: 36, height: 36)
                        .clipShape(Circle())
                        
                    Text(post.userName)
                }
                .buttonStyle(.plain)

                Spacer()
                
                Image(systemName: "ellipsis")
            }
            .padding(6)

            Image("car")
                .resizable()
                .aspectRatio(UIImage(named: post.postPicturename)!.size, contentMode: .fill)

            
            HStack{
                HStack(spacing: 12){
                    Icon(iconName: "heart")
                    Icon(iconName: "message")
                    Icon(iconName: "paperplane")
                }

                Spacer()
                
                Icon(iconName: "bookmark")
            }
            .padding(6)
            
            HStack{
                Text("\(post.numLikes) Likes")
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.horizontal, 6)
            
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post(post: PostModel(profilImageName: "Ruffles", userName: "Ruffles", postPicturename: "car", numLikes: 124))
    }
}
