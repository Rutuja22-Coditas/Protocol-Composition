//
//  EmpnameTableViewCell.swift
//  Protocol Composition
//
//  Created by Coditas on 18/10/21.
//  Copyright © 2021 Coditas. All rights reserved.
//

import UIKit

class EmpnameTableViewCell: UITableViewCell {

    @IBOutlet weak var firstNameTitle: UILabel!
    @IBOutlet weak var firstName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
