//
//  DateOfWorkViewController.swift
//  a2zServis
//
//  Created by i Daliri on 5/6/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit
import SCLAlertView

class DateOfWorkViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var dowTextField: UITextField!
    @IBOutlet weak var nextBottomConst: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // I'm Here
        self.navigationController?.navigationBar.backItem?.title = ""
        self.dowTextField.delegate = self
        self.setupDatePicker()
        
    }
    override func viewWillAppear(_ animated:Bool) {
        super.viewWillAppear(animated)
        
        self.registerForKeyboardNotifications()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.deregisterFromKeyboardNotifications()
    }
    //    func datePickerValueChanged(sender: UIDatePicker) {
    //        let formatter = DateFormatter()
    //        formatter.dateFormat = "dd/MM/yyyy"
    //        formatter.calendar = Calendar(identifier: .gregorian)
    //        let date = Date()
    //        let dateInGrogrian = formatter.string(from: date)
    //
    //        print(dateInGrogrian)
    //
    //        formatter.calendar = Calendar(identifier: .persian)
    //        formatter.dateFormat = "dd/MM/yyyy"
    //        print("Converted date to Hijri = \(formatter.string(from: date))")
    //
    //    }
    
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
                self.nextBottomConst?.constant = endFrame!.size.height + 20.0
            }
            
            UIView.animate(withDuration: duration,
                           delay: TimeInterval(0),
                           options: animationCurve,
                           animations: { self.view.layoutIfNeeded() },
                           completion: nil)
        }
    }
    
    func setupDatePicker() {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .dateAndTime
        datePicker.backgroundColor = UIColor.white
        datePicker.calendar = NSCalendar(identifier: NSCalendar.Identifier.persian) as Calendar!
        datePicker.locale = NSLocale(localeIdentifier: "fa_IR") as Locale!
        //        let dateString = "۱۳۹۶-۰۲-۱۶"
        //        let df = DateFormatter()
        //        let date = df.date(from: dateString)
        //        if let unwrappedDate = date {
        //            datePicker.setDate(unwrappedDate, animated: false)
        //        }
        let today = Date()
        let calendar = Calendar.current
        let defaultDate: Date = calendar.date(byAdding: .year, value: -48, to: today)!
        let minimumDate: Date = calendar.date(byAdding: .year, value: -100, to: today)!
        datePicker.setDate(defaultDate, animated: true)
        datePicker.maximumDate = today
        datePicker.minimumDate = minimumDate
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd در تاریخ HH ساعت"
        _ = formatter.string(from: defaultDate)
        //        self.dowTextField.text = defaultDateString
        
        self.dowTextField.inputView = datePicker
        formatter.calendar = Calendar(identifier: .persian)
        datePicker.addTarget(self, action: #selector(self.dateChanged(_:)), for: .valueChanged)
        
    }
    
    func dateChanged(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = NSCalendar(identifier: NSCalendar.Identifier.persian)! as Calendar
        dateFormatter.locale = NSLocale(localeIdentifier: "fa_IR") as Locale!
        dateFormatter.calendar = Calendar(identifier: .persian)
        dateFormatter.dateFormat = "MM-dd ساعت HH در تاریخ"
        let dateString = dateFormatter.string(from: sender.date)
        self.dowTextField.text = dateString
    }
    
    @IBAction func nextBttnTapped(_ sender: Any) {
        if dowTextField.text?.isEmpty == true {
            let alert = SCLAlertView()
            alert.showError("oops!", subTitle: "لطفا تاریخ انجام کار را مشخص کنید", closeButtonTitle: "ok", animationStyle: .topToBottom)
        }else {
            performSegue(withIdentifier: "showUserDataVC", sender: self)
        }
    }
    
}
