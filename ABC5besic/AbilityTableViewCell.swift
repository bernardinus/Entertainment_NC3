//
//  AbilityTableViewCell.swift
//  ABC5besic
//
//  Created by Dimas Pagam on 15/06/20.
//  Copyright © 2020 Dimas Pagam. All rights reserved.
//

import UIKit

class AbilityTableViewCell: UITableViewCell {

    @IBOutlet var AbilityIcon:UIImageView?
    @IBOutlet var AbilityName: UILabel?
    @IBOutlet var AbilityState : UISwitch?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
