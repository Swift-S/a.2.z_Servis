//
//  ElectricalViewController.swift
//  a2zServis
//
//  Created by i Daliri on 5/4/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit

class ElectricalViewController: UIViewController {

    @IBOutlet weak var electricalIcon: UIButton!
    @IBOutlet weak var lightinggBttn: UIButton!
    @IBOutlet weak var fanIcBttn: UIButton!
    @IBOutlet weak var lightSwitchesIcBttn: UIButton!
    @IBOutlet weak var electricalServiceIcBttn: UIButton!
    
    let lightingIdentifire = "showLightingQuestionVC"
    let fansIdentifire = "showFansQuestionVC"
    let lightSwitchIdentifire = "showLightSwithQuestionVC"
    let electricalServiceIdentifire = "showElectricSrvsQuestionVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //I'm Here...
        
        self.setupView()
    }
    
    

    @IBAction func lightingBttnTapped(_ sender: Any) {
        performSegue(withIdentifier: lightingIdentifire, sender: self)
    }

    @IBAction func fansBttnTapped(_ sender: Any) {
        performSegue(withIdentifier: fansIdentifire, sender: self)
    }

    @IBAction func lightSwitchBttnTapped(_ sender: Any) {
        performSegue(withIdentifier: lightSwitchIdentifire, sender: self)
    }
    
    @IBAction func electricalServiceBttnTapped(_ sender: Any) {
        performSegue(withIdentifier: electricalServiceIdentifire, sender: self)
    }
    
    func setupView() {
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.backItem?.title = ""
        self.navigationController?.navigationBar.tintColor = UIColor.darkGray
        self.electricalIcon.layer.cornerRadius = 40
        self.electricalIcon.setTitle("\u{e608}", for: .normal)
        self.lightinggBttn.setTitle("\u{E620}", for: .normal)
        self.fanIcBttn.setTitle("\u{E61f}", for: .normal)
        self.lightSwitchesIcBttn.setTitle("\u{E621}", for: .normal)
        self.electricalServiceIcBttn.setTitle("\u{E615}", for: .normal)
    }
}
