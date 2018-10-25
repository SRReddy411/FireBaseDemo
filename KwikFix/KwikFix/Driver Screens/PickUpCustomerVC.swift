//
//  PickUpCustomerVC.swift
//  KwikFix
//
//  Created by volive solutions on 24/07/18.
//  Copyright © 2018 Volive Solutions. All rights reserved.
//

import UIKit

class PickUpCustomerVC: UIViewController {
    
    
    @IBOutlet var pickUpDataTable: UITableView!
    let backBtn: UIButton = UIButton()
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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
extension PickUpCustomerVC: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "PickUpCustomerCell", for: indexPath) as! PickUpCustomerCell
        
        Cell.date_Lbl.text = "March 16 2018"
        Cell.orderId_DynamicLbl.text = "OCJC180253652/03"
        Cell.address_Lbl.text = "Al ahsa sreet,malaz Riyadh,Saudi arabia,682507"
        Cell.navigate_Btn.addTarget(self, action: #selector(PickUpCustomerVC.navigateBtnAction), for: .touchUpInside)
        Cell.viewDetails_Btn.addTarget(self, action: #selector(PickUpCustomerVC.viewDetailsBtn), for: .touchUpInside)
        return Cell
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       
        let story = UIStoryboard.init(name: "Main", bundle: nil)
        let arriverPickUpVC = story.instantiateViewController(withIdentifier: "ArrivedPickUpVC") as! ArrivedPickUpVC
        self.navigationController?.pushViewController(arriverPickUpVC, animated: true)
        
        
    }
    
    @objc func navigateBtnAction()  {
        let story = UIStoryboard.init(name: "Main", bundle: nil)
        let arriverPickUpVC = story.instantiateViewController(withIdentifier: "ArrivedPickUpVC") as! ArrivedPickUpVC
        self.navigationController?.pushViewController(arriverPickUpVC, animated: true)
    }
    @objc func viewDetailsBtn()  {
        let story = UIStoryboard.init(name: "Main", bundle: nil)
        let arriverPickUpVC = story.instantiateViewController(withIdentifier: "PickUpCustomerDetailsVC") as! PickUpCustomerDetailsVC
        self.navigationController?.pushViewController(arriverPickUpVC, animated: true)
    }
    
}
