//
//  LightingQuestionVIewController.swift
//  a2zServis
//
//  Created by i Daliri on 5/5/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit
import SCLAlertView

class LightingQuestionVIewController: UIViewController {
    
    @IBOutlet weak var answerOne: UILabel!
    @IBOutlet weak var answerTwoLabel: UILabel!
    @IBOutlet weak var answerThreeLabel: UILabel!
    @IBOutlet weak var answerFourLabel: UILabel!
    
    let kSuccessTitle = ""
    let kSubtitle = "لطفا یکی از موارد زیر را انتخاب کنید."
    public let appearance = SCLAlertView.SCLAppearance(showCloseButton: true)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // I'm Here...
        self.navigationController?.navigationBar.topItem?.title = ""
        
    }
    
    @IBAction func questionOneTapped(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alert = SCLAlertView(appearance: appearance)
        _ = alert.addButton("۰") {
            print("۰")
            self.answerOne.text = "۰"
        }
        _ = alert.addButton("۱") {
            print("۱")
            self.answerOne.text = "۱ عدد"
        }
        _ = alert.addButton("۲") {
            print("۲")
            self.answerOne.text = "۲ عدد"
        }
        //        _ = alert.showSuccess(kSuccessTitle, subTitle: kSubtitle)
        _ = alert.showSuccess(kSuccessTitle, subTitle: kSubtitle, colorStyle: 0xA4D068, colorTextButton: 0xFFFFFF,animationStyle: .leftToRight)

    }
    

    
    @IBAction func questionTwoTapped(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alertView = SCLAlertView(appearance: appearance)
        _ = alertView.addButton("۰") {
            self.answerTwoLabel.text = "۰"
        }
        _ = alertView.addButton("۱") {
            self.answerTwoLabel.text = "۱ عدد"
        }
        _ = alertView.addButton("۲") {
            self.answerTwoLabel.text = "۲ عدد"
        }
        _ = alertView.showSuccess(kSuccessTitle, subTitle: kSubtitle, colorStyle: 0xA4D068, colorTextButton: 0xFFFFFF,animationStyle: .rightToLeft)
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
    @IBAction func questionFourTapped(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alert = SCLAlertView(appearance: appearance)
        _ = alert.addButton("بله") {
            self.answerFourLabel.text = "بله"
        }
        _ = alert.addButton("خیر") {
            self.answerFourLabel.text = "خیر"
        }
        _ = alert.showSuccess(kSuccessTitle, subTitle: kSubtitle, colorStyle: 0xA4D068, colorTextButton: 0xFFFFFF,animationStyle: .topToBottom)
    }

    @IBAction func nextBttnTapped(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alertView = SCLAlertView(appearance: appearance)
//        alertView.showWait("Comming Soon", subTitle: ":)", duration: 5 )
        alertView.addButton("ok") {}
        alertView.showSuccess("oops!", subTitle: "coming soos", colorStyle: 0xA4D068, colorTextButton: 0xFFFFFF, animationStyle: .noAnimation)


    }

    
    func hexStringToUIColor (hex:String) -> UIColor {
//        hexStringToUIColor(hex: "#F1B933")
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
