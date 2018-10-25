//
//  UserCell.swift
//  FirebaseFriendRequest
//
//  Created by RamiReddy on 7/10/18.
//  Copyright © 2018 RamiReddy. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var buttonFunc: (() -> (Void))!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        buttonFunc()
    }
    
    func setFunction(_ function: @escaping () -> Void) {
        print("set function name")
        self.buttonFunc = function
    }
    
}
