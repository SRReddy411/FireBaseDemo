//
//  ArrivedPickUpVC.swift
//  KwikFix
//
//  Created by volive solutions on 24/07/18.
//  Copyright © 2018 Volive Solutions. All rights reserved.
//

import UIKit

class ArrivedPickUpVC: UIViewController {
    
    @IBOutlet var pickUpArrivedAddress_lbl: UILabel!
    let backBtn: UIButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtn.setImage(UIImage(named: "back_white"), for: UIControlState())
        backBtn.addTarget(self, action: #selector(self.onClcikBack), for: UIControlEvents.touchUpInside)
        backBtn.frame = CGRect(x: 0, y: 0, width: 33/2, height: 27/2)
        let barButton = UIBarButtonItem(customView: backBtn)
        barButton.tintColor = UIColor.white
        self.navigationItem.leftBarButtonItem = barButton
        
        self.navigationItem.title = "Arrived at the PickUp point"
    }
    @objc func onClcikBack()
    {
        _ = self.navigationController?.popViewController(animated: true)
    }
    @IBAction func callBtn_Action(_ sender: Any) {
    }
    @IBAction func textBtn_Action(_ sender: Any) {
    }
    @IBAction func arrivelBtn_Action(_ sender: Any) {
      
    }
    
    
    
    
}
