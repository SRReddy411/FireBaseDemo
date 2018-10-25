//
//  HomeViewController.swift
//  KwikFix
//
//  Created by volive solutions on 24/07/18.
//  Copyright © 2018 Volive Solutions. All rights reserved.
//

import UIKit
import SideMenu

class MapViewController: UIViewController {

    @IBOutlet var offlineIndicate_View: UIView!
    @IBOutlet var offline_Lbl: UILabel!
    @IBOutlet var offline_View: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        offline_View.layer.borderWidth = 1
        
        offline_View.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
    //MARK:- Notification Action
    @IBAction func notificationBtn_Action(_ sender: Any) {
    }
    //MARK:- Menu BTN ACTION
    @IBAction func menuBtn_Action(_ sender: Any) {
        let menuVC = self.storyboard?.instantiateViewController(withIdentifier: "SlideMenuViewController")
        
        let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: menuVC!)
        menuLeftNavigationController.leftSide = true
        
        SideMenuManager.menuLeftNavigationController = menuLeftNavigationController
        // SideMenuManager.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        //  SideMenuManager.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(openSideMenu), name: NSNotification.Name (rawValue: "openSideMenu"), object: nil)
        
        self.navigationController?.navigationBar.isTranslucent = false
        
        
    }
    //MARK:- PICK UP BTN ACTION
    @IBAction func pickupBtn_Action(_ sender: Any) {
        
        let story = UIStoryboard.init(name: "Main", bundle: nil)
        let pickUpVC = story.instantiateViewController(withIdentifier: "PickUpCustomerVC") as! PickUpCustomerVC
        self.navigationController?.pushViewController(pickUpVC, animated: true)
        
    }
    //MARK:- DELIVERY BTN ACTION
    @IBAction func deliveryBtn_Action(_ sender: Any) {
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
