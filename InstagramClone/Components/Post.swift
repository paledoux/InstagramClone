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

            Image(post.postPicturename)
                .resizable()
                .aspectRatio(contentMode: .fit)
                

            
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
            
            VStack(spacing:12){
                HStack{
                    Text("\(post.numLikes) Likes")
                        .fontWeight(.bold)
                    Spacer()
                }
                
                HStack{
                    Text("**\(post.userName)** \(post.caption)")
                        .lineLimit(2)
                    Spacer()
                }
            }
            .padding(.horizontal, 6)
            
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post(post: postPreview)
    }
}
