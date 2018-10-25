//
//  PickUpCustomerDetailsVC.swift
//  KwikFix
//
//  Created by volive solutions on 24/07/18.
//  Copyright © 2018 Volive Solutions. All rights reserved.
//

import UIKit

class PickUpCustomerDetailsVC: UIViewController {

    @IBOutlet var orderId_StaticLbl: UILabel!
    @IBOutlet var orderId_dynamicLbl: UILabel!
    @IBOutlet var nameStatic_lbl: UILabel!
    @IBOutlet var date_StaticLbl: UILabel!
    @IBOutlet var product_staticLbl: UILabel!
    @IBOutlet var modelNo_staticLbl: UILabel!
    @IBOutlet var emiNo_staticLbl: UILabel!
    @IBOutlet var productTyep_staticLbl: UILabel!
    @IBOutlet var touchScreen_staticLbl: UILabel!
    @IBOutlet var nameDynamic_lbl: UILabel!
    @IBOutlet var date_DynamicLbl: UILabel!
    @IBOutlet var product_DynamicLbl: UILabel!
    @IBOutlet var modelNo_DynamicLbl: UILabel!
    @IBOutlet var emiNo_DynamicLbl: UILabel!
    @IBOutlet var productTyep_DynamicLbl: UILabel!
    @IBOutlet var touchScreen_DynamicLbl: UILabel!
    @IBOutlet var address_staticLbl: UILabel!
    @IBOutlet var address_dynamicLbl: UILabel!
    
    let backBtn: UIButton = UIButton()
    
    @IBAction func nextBtn_Action(_ sender: Any) {
        let story = UIStoryboard.init(name: "Main", bundle: nil)
        let confirmationVC = story.instantiateViewController(withIdentifier: "ConfirmationVC") as! ConfirmationVC
        self.navigationController?.pushViewController(confirmationVC, animated: true)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backBtn.setImage(UIImage(named: "back_white"), for: UIControlState())
        backBtn.addTarget(self, action: #selector(self.onClcikBack), for: UIControlEvents.touchUpInside)
        backBtn.frame = CGRect(x: 0, y: 0, width: 33/2, height: 27/2)
        let barButton = UIBarButtonItem(customView: backBtn)
        barButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.navigationItem.leftBarButtonItem = barButton
        self.navigationItem.title = "Pick from customer"
        
    }
    @objc func onClcikBack()
    {
        _ = self.navigationController?.popViewController(animated: true)
    }
    

}
