//
//  LightSwithQuestionViewController.swift
//  a2zServis
//
//  Created by i Daliri on 5/5/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit
import SCLAlertView

class LightSwithQuestionViewController: UIViewController {

    @IBOutlet weak var answerOne: UILabel!
    @IBOutlet weak var answerTwoLabel: UILabel!
    @IBOutlet weak var answerThreeLabel: UILabel!
    
    let kSuccessTitle = ""
    let kSubtitle = "لطفا یکی از موارد زیر را انتخاب کنید."
    public let appearance = SCLAlertView.SCLAppearance(showCloseButton: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // I'm Here...
        
        self.navigationController?.navigationBar.backItem?.title = ""
    }
    
    @IBAction func questionOneTapped(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alert = SCLAlertView(appearance: appearance)
        _ = alert.addButton("کمتر از ۵تا") {
            self.answerOne.text = "کمتر از ۵تا"
        }
        _ = alert.addButton("۵تا ۱۰ عدد") {
            self.answerOne.text = "۵تا ۱۰ عدد"
        }
        _ = alert.addButton("بیشتر از ۱۰ تا") {
            self.answerOne.text = "بیشتر از ۱۰ تا"
        }
        //        _ = alert.showSuccess(kSuccessTitle, subTitle: kSubtitle)
        _ = alert.showSuccess(kSuccessTitle, subTitle: kSubtitle, colorStyle: 0xA4D068, colorTextButton: 0xFFFFFF,animationStyle: .leftToRight)
    }

    @IBAction func questionTwoTapped(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alert = SCLAlertView(appearance: appearance)
        _ = alert.addButton("کمتر از ۵تا") {
            self.answerTwoLabel.text = "کمتر از ۵تا"
        }
        _ = alert.addButton("۵تا ۱۰ عدد") {
            self.answerTwoLabel.text = "۵تا ۱۰ عدد"
        }
        _ = alert.addButton("بیشتر از ۱۰ تا") {
            self.answerTwoLabel.text = "بیشتر از ۱۰ تا"
        }
        //        _ = alert.showSuccess(kSuccessTitle, subTitle: kSubtitle)
        _ = alert.showSuccess(kSuccessTitle, subTitle: kSubtitle, colorStyle: 0xA4D068, colorTextButton: 0xFFFFFF,animationStyle: .leftToRight)
    }

    @IBAction func questionThreeTapped(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alert = SCLAlertView(appearance: appearance)
        _ = alert.addButton("بله") {
            self.answerThreeLabel.text = "بله"
        }
        _ = alert.addButton("خیر") {
            self.answerThreeLabel.text = "خیر"
        }
        _ = alert.showSuccess(kSuccessTitle, subTitle: kSubtitle, colorStyle: 0xA4D068, colorTextButton: 0xFFFFFF,animationStyle: .topToBottom)
    }
    
    @IBAction func nextBttnTapped(_ sender: Any) {
        performSegue(withIdentifier: "showDateWorkVCThree", sender: self)
    }
}
