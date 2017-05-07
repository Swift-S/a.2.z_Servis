//
//  PlassTabBarController.swift
//  a2zServis
//
//  Created by i Daliri on 5/3/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit
import SCLAlertView

class PlassTabBarController: UIViewController {
    
    @IBOutlet weak var plusIcon: UITabBarItem!
    @IBOutlet weak var cleaningBttn: UIButton!
    @IBOutlet weak var handymanBttn: UIButton!
    @IBOutlet weak var plumbingBttn: UIButton!
    @IBOutlet weak var electricalBttn: UIButton!
    @IBOutlet weak var paintingBttn: UIButton!
    
    let showElectricalIdentifire = "showElectricalVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // I'm Here...
        self.setupView()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cleaningBttnTapped(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alert = SCLAlertView(appearance: appearance)
        alert.showWait(":)", subTitle: "Comming Soon", duration: 1, colorStyle: 0xFDB52B)
    }
    @IBAction func workServiceBttnTapped(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alert = SCLAlertView(appearance: appearance)
        alert.showWait(":)", subTitle: "Comming Soon", duration: 1, colorStyle: 0xFDB52B)
    }
    
    @IBAction func plumbingBttnTapped(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alert = SCLAlertView(appearance: appearance)
        alert.showWait(":)", subTitle: "Comming Soon", duration: 1, colorStyle: 0xFDB52B)
    }
    @IBAction func electricalBttnTapped(_ sender: Any) {
        performSegue(withIdentifier: showElectricalIdentifire, sender: self)
    }
    
    @IBAction func paintingBttnTapped(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alert = SCLAlertView(appearance: appearance)
        alert.showWait(":)", subTitle: "Comming Soon", duration: 1, colorStyle: 0xFDB52B)
    }
    func setupView() {
        self.cleaningBttn.setTitle("\u{e606}", for: .normal)
        self.handymanBttn.setTitle("\u{e60a}", for: .normal)
        self.plumbingBttn.setTitle("\u{e609}", for: .normal)
        self.electricalBttn.setTitle("\u{e608}", for: .normal)
        self.paintingBttn.setTitle("\u{e607}", for: .normal)
        self.cleaningBttn.layer.cornerRadius = 35
        self.handymanBttn.layer.cornerRadius = 35
        self.plumbingBttn.layer.cornerRadius = 35
        self.electricalBttn.layer.cornerRadius = 35
        self.paintingBttn.layer.cornerRadius = 35
        
    }
    
}
