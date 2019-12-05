//
//  OfferCell.swift
//  Emplate
//
//  Created by Salma Ashour on 12/5/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import UIKit

class OfferCell: UITableViewCell {
    
    @IBOutlet weak var offerName: UILabel!
    @IBOutlet weak var offerImage: UIImageView!
    @IBOutlet weak var offerExpiryDateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
