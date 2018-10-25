//
//  ConfirmationVC.swift
//  KwikFix
//
//  Created by volive solutions on 24/07/18.
//  Copyright © 2018 Volive Solutions. All rights reserved.
//

import UIKit

class ConfirmationVC: UIViewController {
let backBtn: UIButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        addPhoto_View.layer.borderWidth = 1
        
        addPhoto_View.layer.borderColor = #colorLiteral(red: 0.9843137255, green: 0.3960784314, blue: 0.1450980392, alpha: 1)
        backBtn.setImage(UIImage(named: "back_white"), for: UIControlState())
        backBtn.addTarget(self, action: #selector(self.onClcikBack), for: UIControlEvents.touchUpInside)
        backBtn.frame = CGRect(x: 0, y: 0, width: 33/2, height: 27/2)
        let barButton = UIBarButtonItem(customView: backBtn)
        barButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.navigationItem.leftBarButtonItem = barButton
        self.navigationItem.title = "Confirmation"
    }
    @IBOutlet var addPhoto_View: UIView!
    @objc func onClcikBack()
    {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
