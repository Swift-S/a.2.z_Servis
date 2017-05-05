//
//  UserTabBarController.swift
//  a2zServis
//
//  Created by i Daliri on 5/3/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit

class UserTabBarController: UIViewController {
    
    @IBOutlet weak var userIcon: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // I'm Here...
        self.navigationController?.isNavigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
