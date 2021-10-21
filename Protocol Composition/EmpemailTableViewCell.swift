//
//  EmpemailTableViewCell.swift
//  Protocol Composition
//
//  Created by Coditas on 18/10/21.
//  Copyright © 2021 Coditas. All rights reserved.
//

import UIKit

class EmpemailTableViewCell: UITableViewCell {

    @IBOutlet weak var emailLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
