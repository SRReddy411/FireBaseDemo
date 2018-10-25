//
//  SlideMenuViewController.swift
//  KwikFix
//
//  Created by volive solutions on 25/07/18.
//  Copyright © 2018 Volive Solutions. All rights reserved.
//

import UIKit

class SlideMenuViewController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var profileIMageView: UIImageView!
    @IBOutlet var profile_emailLbl: UILabel!
    @IBOutlet var profileName_lbl: UILabel!
    @IBOutlet var profilePic: UIButton!
    @IBOutlet var menuTableView: UITableView!
    
    var picker = UIImagePickerController()
    var pickerImage  = UIImage()
     let iteams = ["Home","My DELIVERIES","PICKUP FROM CUSTOMER","DELIVER TO CUSTOMER","DELIVER TO SERVICE PROVIDER","NOTIFICATION","PROFILE SETTING","ABOUT US","CONTACT US","SIGN OUT"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
         animateTable()
    }
    func animateTable() {
        menuTableView.reloadData()
        
        let cells = menuTableView.visibleCells
        let tableHeight: CGFloat = menuTableView.bounds.size.height
        
        for i in cells {
            let cell: UITableViewCell = i as UITableViewCell
            cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
        }
        
        var index = 0
        
        for a in cells {
            let cell: UITableViewCell = a as UITableViewCell
            UIView.animate(withDuration: 1.5, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                cell.transform = CGAffineTransform(translationX: 0, y: 0);
            }, completion: nil)
            
            index += 1
        }
    }
    @IBAction func addProfilePic_Action(_ sender: Any) {
        
        let alert:UIAlertController=UIAlertController(title:"Choose Image", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        let cameraAction = UIAlertAction(title: "Camera", style: UIAlertActionStyle.default)
        {
            UIAlertAction in
            self.openCamera()
        }
        let gallaryAction = UIAlertAction(title:"Gallery", style: UIAlertActionStyle.default)
        {
            UIAlertAction in
            self.openGallary()
        }
        let cancelAction = UIAlertAction(title:"Cancel", style: UIAlertActionStyle.cancel)
        {
            UIAlertAction in
        }
        
        // Add the actions
        picker.delegate = self
        alert.addAction(cameraAction)
        alert.addAction(gallaryAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    func openCamera()
    {
        if(UIImagePickerController .isSourceTypeAvailable(UIImagePickerControllerSourceType.camera))
        {
            picker.sourceType = UIImagePickerControllerSourceType.camera
            self .present(picker, animated: true, completion: nil)
        }
        else
        {
                
        }
    }
    func openGallary()
    {
        picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(picker, animated: true, completion: nil)
    }
    
    //PickerView Delegate Methods
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        //picker .dismiss(animated: true, completion: nil)
        picker.dismiss(animated: true, completion: nil)
        let pickedImage2 = info[UIImagePickerControllerOriginalImage]
        profileIMageView.image = pickedImage2  as? UIImage
        pickerImage = (pickedImage2 as? UIImage)!
     
        
        
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
        
    {
        print("picker cancel.")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
extension SlideMenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iteams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
 
        Cell.menuItem_lbl.text = iteams[indexPath.row]
  
        return Cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
            let storyboard = UIStoryboard(name:"Main", bundle: nil)
            let homeVC = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
            self.navigationController?.pushViewController(homeVC, animated: true)
            
        }
            
        else if indexPath.row == 1 {
            
            
            let storyboard = UIStoryboard(name:"Main", bundle: nil)
            let homeVC = storyboard.instantiateViewController(withIdentifier: "MyRidesViewController")
            self.navigationController?.pushViewController(homeVC, animated: true)
            
            
        }
            
        else if indexPath.row == 2 {
            
            
            let storyboard = UIStoryboard(name:"Main", bundle: nil)
            let homeVC = storyboard.instantiateViewController(withIdentifier: "WalletViewController")
            self.navigationController?.pushViewController(homeVC, animated: true)
            
            
        }
            
            //BuyAPackagesViewController
        else if indexPath.row == 3 {
            
            
            let storyboard = UIStoryboard(name:"Main", bundle: nil)
            let homeVC = storyboard.instantiateViewController(withIdentifier: "BuyAPackagesViewController")
            self.navigationController?.pushViewController(homeVC, animated: true)
            
            
        }
            
        else if indexPath.row == 4 {
            let storyboard = UIStoryboard(name:"Main", bundle: nil)
            let homeVC = storyboard.instantiateViewController(withIdentifier: "RatesViewController")
            self.navigationController?.pushViewController(homeVC, animated: true)
        }
            
        else if indexPath.row == 5 {
            
            
            let storyboard = UIStoryboard(name:"Main", bundle: nil)
            let homeVC = storyboard.instantiateViewController(withIdentifier: "GetFreeRidesViewController")
            self.navigationController?.pushViewController(homeVC, animated: true)
            
        }
            
            //SettingsViewController
            
        else if indexPath.row == 6 {
            
            
            let storyboard = UIStoryboard(name:"Main", bundle: nil)
            let homeVC = storyboard.instantiateViewController(withIdentifier: "SettingsViewController")
            self.navigationController?.pushViewController(homeVC, animated: true)
            
            
        }
            
        else if indexPath.row == 7
        {
            let storyboard = UIStoryboard(name:"Main", bundle: nil)
            let homeVC =  storyboard.instantiateViewController(withIdentifier: "ContactUS")
            
            
            self.navigationController?.pushViewController(homeVC, animated: true)
            
        }
        else if indexPath.row == 8
        {
            
        }
    }
    
}
