//
//  PlassTabBarController.swift
//  a2zServis
//
//  Created by i Daliri on 5/3/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit

class PlassTabBarController: UIViewController {

    @IBOutlet weak var plusIcon: UITabBarItem!
    @IBOutlet weak var cleaningBttn: UIButton!
    @IBOutlet weak var handymanBttn: UIButton!
    @IBOutlet weak var plumbingBttn: UIButton!
    @IBOutlet weak var electricalBttn: UIButton!
    @IBOutlet weak var paintingBttn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        plusIcon.title = "\u{e613}"
        plusIcon.badgeColor = UIColor.blue
        self.cleaningBttn.setTitle("\u{e606}", for: .normal)
        self.handymanBttn.setTitle("\u{e60a}", for: .normal)
        self.plumbingBttn.setTitle("\u{e609}", for: .normal)
        self.electricalBttn.setTitle("\u{e608}", for: .normal)
        self.paintingBttn.setTitle("\u{e607}", for: .normal)
//        self.cleaningBttn.layer.borderWidth = 2
        self.cleaningBttn.layer.cornerRadius = 35
        self.handymanBttn.layer.cornerRadius = 35
        self.plumbingBttn.layer.cornerRadius = 35
        self.electricalBttn.layer.cornerRadius = 35
        self.paintingBttn.layer.cornerRadius = 35
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
