//
//  Post.swift
//  Facebook Clone
//
//  Created by Alex Wong on 8/23/17.
//  Copyright © 2017 Alex Wong. All rights reserved.
//

import Foundation
import UIKit

struct Post
{
    var createdBy: User
    var timeAgo: String?
    var caption: String?
    var image: UIImage?
    var numberOfLikes: Int?
    var numberOfComments: Int?
    var numberOfShares: Int?
    
    static func fetchPosts() -> [Post]
    {
        var posts = [Post]()
        
        let steveJobs = User(username: "Steve Jobs", profileImage: UIImage(named: "SteveJobs"))
        let post1 = Post(createdBy: steveJobs, timeAgo: "1 hr", caption: "It doesn't make sense to hire smart people and then tell them what to do; we hire smart people so they can tell us what to do.", image: UIImage(named: "1"), numberOfLikes: 3244, numberOfComments: 501, numberOfShares: 1402)
        let post2 = Post(createdBy: steveJobs, timeAgo: "3 hrs", caption: "If today were the last day of my life, would I want to do what I'm about to do today?", image: UIImage(named: "2"), numberOfLikes: 2365, numberOfComments: 135, numberOfShares: 1257)
        let post3 = Post(createdBy: steveJobs, timeAgo: "5 hrs", caption: "Don't let the noise of other people's opinions drown out your own inner voice.", image: UIImage(named: "3"), numberOfLikes: 4326, numberOfComments: 424, numberOfShares: 1970)
        
        let elonMusk = User(username: "Elon Musk", profileImage: UIImage(named: "ElonMusk"))
        let post4 = Post(createdBy: elonMusk, timeAgo: "2 hrs", caption: "If something is important enough, even if the odds are against you, you should still do it.", image: UIImage(named: "4"), numberOfLikes: 2475, numberOfComments: 235, numberOfShares: 976)
        let post5 = Post(createdBy: elonMusk, timeAgo: "8 hrs", caption: "You want to be extra rigorous about making the best possible thing you can. Find everything that's wrong with it and fix it. Seek negative feedback, particularly from friends.", image: UIImage(named: "5"), numberOfLikes: 2476, numberOfComments: 867, numberOfShares: 1609)
        let post6 = Post(createdBy: elonMusk, timeAgo: "Yesterday", caption: "Failure is an option here. If things are not failing, you are not innovating enough.", image: UIImage(named: "6"), numberOfLikes: 5075, numberOfComments: 1275, numberOfShares: 2956)
        
        posts.append(post1)
        posts.append(post4)
        posts.append(post2)
        posts.append(post5)
        posts.append(post3)
        posts.append(post6)
        
        return posts
    }
}

struct User
{
    var username: String?
    var profileImage: UIImage?
}
