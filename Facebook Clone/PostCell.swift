//
//  PostCell.swift
//  Facebook Clone
//
//  Created by Alex Wong on 8/23/17.
//  Copyright © 2017 Alex Wong. All rights reserved.
//

import Foundation
import UIKit

class PostCell: UITableViewCell{
    
    var post: Post! {
        didSet{
            self.updateUI()
        }
    }
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var postCreatedAt: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var postStatsLabel: UILabel!
    
    func updateUI(){
        
        profileImageView.image = post.createdBy.profileImage
        usernameLabel.text = post.createdBy.username
        postCreatedAt.text = post.timeAgo
        captionLabel.text = post.caption
        postImageView.image = post.image
        postStatsLabel.text = "\(post.numberOfLikes!) Likes     \(post.numberOfComments!)  Comments     \(post.numberOfShares!)  Shares"
        
        
    }
}
