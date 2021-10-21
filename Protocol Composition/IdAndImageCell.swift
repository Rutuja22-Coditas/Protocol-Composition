//
//  IdAndImageCell.swift
//  Protocol Composition
//
//  Created by Coditas on 21/10/21.
//  Copyright © 2021 Coditas. All rights reserved.
//

import UIKit

class IdAndImageCell: UITableViewCell {

    
    @IBOutlet weak var empImage: UIImageView!
    @IBOutlet weak var idLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
