//
//  LeaderboardTableViewCell.swift
//  ABC5BasicClient
//
//  Created by Aldo on 15/06/20.
//  Copyright © 2020 ADA. All rights reserved.
//

import UIKit

class LeaderboardTableViewCell: UITableViewCell {

    @IBOutlet var imageViews: UIImage?
    @IBOutlet var nametext: UILabel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
