//
//  UserDataViewController.swift
//  a2zServis
//
//  Created by i Daliri on 5/6/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit
import SCLAlertView

class UserDataViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mobTextField: UITextField!
    @IBOutlet weak var adderesTextField: UITextField!
    @IBOutlet weak var sendBottomConst: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // I'm Here...
        self.navigationController?.navigationBar.backItem?.title = ""
    }
    
    override func viewWillAppear(_ animated:Bool) {
        super.viewWillAppear(animated)
        
        self.registerForKeyboardNotifications()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.deregisterFromKeyboardNotifications()
        self.tabBarController?.tabBar.isHidden = false
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func registerForKeyboardNotifications() {
        //Adding notifies on keyboard appearing
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardNotification(_:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
    func deregisterFromKeyboardNotifications() {
        //Removing notifies on keyboard appearing
        NotificationCenter.default.removeObserver(self)
    }
    
    func keyboardNotification(_ notification: Foundation.Notification) {
        if let userInfo = notification.userInfo {
            let endFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue
            let duration:TimeInterval = (userInfo[UIKeyboardAnimationDurationUserInfoKey] as? NSNumber)?.doubleValue ?? 0
            let animationCurveRawNSN = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? NSNumber
            let animationCurveRaw = animationCurveRawNSN?.uintValue ?? UIViewAnimationOptions().rawValue
            let animationCurve:UIViewAnimationOptions = UIViewAnimationOptions(rawValue: animationCurveRaw)
            if (endFrame?.origin.y)! >= UIScreen.main.bounds.size.height {
                self.sendBottomConst?.constant = 00.0
            } else {
                self.sendBottomConst?.constant = endFrame!.size.height 
            }
            
            UIView.animate(withDuration: duration,
                           delay: TimeInterval(0),
                           options: animationCurve,
                           animations: { self.view.layoutIfNeeded() },
                           completion: nil)
        }
    }
    //backToPlusTabBarVC
    @IBAction func sendBttnTapped(_ sender: Any) {
        if self.nameTextField.text?.isEmpty == true {
            let alert = SCLAlertView()
            alert.showError("خطا!", subTitle: "لطفا نام و نام خانوادگی خود را وارد کنید", closeButtonTitle: "ok", animationStyle: .topToBottom)
        }else if mobTextField.text?.isEmpty == true {
            let alert = SCLAlertView()
            alert.showError("خطا!", subTitle: "لطفا شماره موبایل خود را وارد کنید", closeButtonTitle: "ok", animationStyle: .topToBottom)
        }else if adderesTextField.text?.isEmpty == true {
            let alert = SCLAlertView()
            alert.showError("خطا!", subTitle: "لطفاادرس دقیق خود را وارد کنید", closeButtonTitle: "ok", animationStyle: .topToBottom)
        }else if self.nameTextField.text?.isEmpty == false || self.mobTextField.text?.isEmpty == false {
            let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
            let alert = SCLAlertView(appearance: appearance)
            alert.addButton("تایید", textColor: UIColor.lightGray, showDurationStatus: true, target: self, selector: #selector(UserDataViewController.moveToHome))
            _ = alert.showSuccess("تبریک", subTitle: "اطلاعات با موفقیت ارسال شد", colorStyle: 0xA4D068, colorTextButton: 0xFFFFFF,animationStyle: .topToBottom)
        }
    }
    
    func moveToHome() {
        performSegue(withIdentifier: "backToPlusTabBarVC", sender: self)
    }
    
    
}
