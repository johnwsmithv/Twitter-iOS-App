//
//  TweetCellTableViewCell.swift
//  Twitter
//
//  Created by John Smith V on 3/1/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class TweetCellTableViewCell: UITableViewCell {

    @IBOutlet weak var userProfileImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tweetsContent: UILabel!
    @IBOutlet weak var replyTweet: UILabel!
    @IBOutlet weak var numberOfRetweets: UILabel!
    @IBOutlet weak var numberOfFavorites: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
