//
//  ExclusiveTableViewCell.swift
//  FoodOrganiserTwo
//
//  Created by Colman Marcus-Quinn on 22.01.17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

class ExclusiveTableViewCell: UITableViewCell {
    
    
    
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var productOffer: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var timeRemaining: UILabel!
    @IBOutlet weak var exclusiveOfferTimeRemaining: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
