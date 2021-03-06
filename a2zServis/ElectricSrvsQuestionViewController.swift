//
//  ElectricSrvsQuestionViewController.swift
//  a2zServis
//
//  Created by i Daliri on 5/5/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit
import SCLAlertView

class ElectricSrvsQuestionViewController: UIViewController {

    @IBOutlet weak var nextBottomConst: NSLayoutConstraint!
    @IBOutlet weak var detailLabel: UITextField!
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
                self.nextBottomConst?.constant = 00.0
            } else {
                self.nextBottomConst?.constant = endFrame!.size.height 
            }
            
            UIView.animate(withDuration: duration,
                           delay: TimeInterval(0),
                           options: animationCurve,
                           animations: { self.view.layoutIfNeeded() },
                           completion: nil)
        }
    }

    @IBAction func nextBttnTapped(_ sender: Any) {
        if self.detailLabel.text?.isEmpty == true {
            let alert = SCLAlertView()
            alert.showError("خطا!", subTitle: "لطفا توضیحات را وارد کنید", closeButtonTitle: "ok", animationStyle: .topToBottom)
        }else {
            performSegue(withIdentifier: "showDateWorkVCFour", sender: self)
        }
    }
}
