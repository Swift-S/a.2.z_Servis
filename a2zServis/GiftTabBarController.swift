//
//  GiftTabBarController.swift
//  a2zServis
//
//  Created by i Daliri on 5/3/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit
import SCLAlertView

class GiftTabBarController: UIViewController {

    @IBOutlet weak var giftIcon: UITabBarItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // I'm Here...
        self.navigationController?.isNavigationBarHidden = true
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alert = SCLAlertView(appearance: appearance)
        alert.showWait(":)", subTitle: "Comming Soon", duration: 1, colorStyle: 0xFDB52B)
    }

}
