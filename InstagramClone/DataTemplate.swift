//
//  DataTemplate.swift
//  InstagramClone
//
//  Created by Philippe-Antoine Ledoux on 2022-01-01.
//

import Foundation

struct PostModel: Hashable {
    var profilImageName: String
    var userName: String
    var postPicturename: String
    var numLikes: Int
    var caption: String
}

struct Storie: Hashable {
    var imageName: String
    var name: String
}

var posts : [PostModel] = [PostModel(profilImageName: "Ruffles", userName: "Ruffles", postPicturename: "car", numLikes: 124,
                                     caption: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."),
                           PostModel(profilImageName: "Ruffles", userName: "Ken", postPicturename: "postPicture2", numLikes: 12,
                                     caption: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.")]

var postPreview = posts.first!

var stories = [Storie(imageName: "Ruffles", name: "Your Story"),Storie(imageName: "Ruffles", name: "Phil"),
               Storie(imageName: "Ruffles", name: "Samuel"),Storie(imageName: "Ruffles", name: "Ken"),
               Storie(imageName: "Ruffles", name: "Laurence"),Storie(imageName: "Ruffles", name: "Lucie"),
               Storie(imageName: "Ruffles", name: "Jean-Francois")]

var storiePreview = stories.first!
