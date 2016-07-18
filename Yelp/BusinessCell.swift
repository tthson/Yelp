//
//  BusinessCell.swift
//  Yelp
//
//  Created by Son, Tran Thai on 7/18/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var restaurantNameLabel: UILabel!
    @IBOutlet weak var restaurantDistanceLabel: UILabel!
    @IBOutlet weak var restaurantReviewLabel: UILabel!
    @IBOutlet weak var restaurantRatingImageView: UIImageView!
    @IBOutlet weak var restaurantAddressLabel: UILabel!
    @IBOutlet weak var restaurantCategoryLabel: UILabel!
    
    var business: Business! {
        didSet {
            if business.imageURL != nil {
                restaurantImageView.setImageWithURL(self.business.imageURL!)
            }else{
                self.restaurantImageView.image = UIImage(named: "noImage")
            }
            restaurantNameLabel.text = self.business.name
            restaurantDistanceLabel.text = self.business.distance
            restaurantRatingImageView.setImageWithURL(business.ratingImageURL!)
            restaurantReviewLabel.text = "\(self.business.reviewCount!) reviews"
            restaurantAddressLabel.text = self.business.address
            restaurantCategoryLabel.text = self.business.categories
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
