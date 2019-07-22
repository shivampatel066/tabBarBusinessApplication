//
//  SocialLinksTableViewCell.swift
//  tabBarBusinessApplication
//
//  Created by Shivam on 22/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class SocialLinksTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
