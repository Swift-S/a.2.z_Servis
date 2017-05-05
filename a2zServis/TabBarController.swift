//
//  TabBarController.swift
//  a2zServis
//
//  Created by i Daliri on 5/3/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupView() {
        self.selectedIndex = 02
        self.tabBar.items?[0].title = "\u{e908}"
        self.tabBar.items?[1].title = "\u{e609}"
        self.tabBar.items?[2].title = "\u{e613}"
        self.tabBar.items?[3].title = "\u{e907}"
        self.tabBar.items?[4].title = "\u{e61A}"
        self.tabBar.items?[2].setTitleTextAttributes([NSFontAttributeName: UIFont(name: "handy", size: 37)as Any], for: .normal)
        UITabBarItem.appearance().titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -12)
        
        //        UITabBar.appearance().tintColor = UIColor.black
        //
        //        self.tabBar.barTintColor = UIColor.white
        //        self.tabBar.isTranslucent = true
        //        self.tabBar.unselectedItemTintColor = UIColor.blue
        //
        let selectedColor   = UIColor(red: 0.9960784314, green: 0.4980392157, blue: 0.1294117647, alpha: 1.0);
        let unselectedColor = UIColor.gray
        
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: unselectedColor,NSFontAttributeName: UIFont(name: "handy", size: 30) as Any], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: selectedColor,NSFontAttributeName: UIFont(name: "handy", size: 30) as Any], for: .selected)
    }
}
