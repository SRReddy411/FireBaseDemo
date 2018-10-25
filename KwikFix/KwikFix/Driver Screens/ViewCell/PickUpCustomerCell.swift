//
//  PickUpCustomerCell.swift
//  KwikFix
//
//  Created by volive solutions on 24/07/18.
//  Copyright © 2018 Volive Solutions. All rights reserved.
//

import UIKit

class PickUpCustomerCell: UITableViewCell {

    @IBOutlet var orderId_staticLbl: UILabel!
    @IBOutlet var date_Lbl: UILabel!
    
    @IBOutlet var orderId_DynamicLbl: UILabel!
    
    
    @IBOutlet var address_Lbl: UILabel!
    
    @IBOutlet var navigate_Btn: UIButton!
    
    
    @IBOutlet var viewDetails_Btn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
