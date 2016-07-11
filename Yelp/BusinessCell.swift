//
//  BusinessCell.swift
//  Yelp
//
//  Created by Dave Vo on 7/10/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet weak var businessImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var reviewImage: UIImageView!
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var business: Business! {
        didSet {
            if business.imageURL != nil {
                businessImage.alpha = 0.0
                UIView.animateWithDuration(0.3, animations: {
                    self.businessImage.setImageWithURL(self.business.imageURL!)
                    self.businessImage.alpha = 1.0
                    }, completion: nil)
            } else {
                businessImage.image = UIImage(named: "noImage")
            }
            
            nameLabel.text = business.name
            distanceLabel.text = business.distance
            reviewImage.setImageWithURL(business.ratingImageURL!)
            reviewCountLabel.text = "\(business.reviewCount!) reviews"
            addressLabel.text = business.address
            categoriesLabel.text = business.categories
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
