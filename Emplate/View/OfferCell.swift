//
//  OfferCell.swift
//  Emplate
//
//  Created by Salma Ashour on 12/5/19.
//  Copyright © 2019 Salma Ashour. All rights reserved.
//

import UIKit
import Kingfisher

class OfferCell: UITableViewCell {
    
    @IBOutlet weak var offerName: UILabel!
    @IBOutlet weak var offerImage: UIImageView!
    @IBOutlet weak var offerExpiryDateLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceBeforeLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    
    func setupCell(offer: Offer) {
        self.offerName.text = offer.name
        self.offerExpiryDateLabel.text = offer.created_at
        let url = URL(string: offer.thumbnail?.urls?.mobile ?? "")
        offerImage.kf.setImage(with: url)
        let prices = offer.postfields[0].getPrice()
        if let price = prices.price {
            self.priceLabel.text = "Pris: " + price
        }
        if let priceBefore = prices.priceBefore {
            self.priceBeforeLabel.text = "For: " + priceBefore
        }
        if let discount = prices.discount {
            self.discountLabel.text = "Spar: " + discount
        }
    }
}
