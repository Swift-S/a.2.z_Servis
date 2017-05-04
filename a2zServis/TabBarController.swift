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
        
        UITabBar.appearance().tintColor = UIColor.orange

        self.selectedIndex = 02


        // Do any additional setup after loading the view.
//        UITabBar.appearance().tintColor = UIColor.black
//        
//        self.tabBar.barTintColor = UIColor.white
//        self.tabBar.isTranslucent = true
//        self.tabBar.unselectedItemTintColor = UIColor.blue
//        
//        let selectedColor   = UIColor.orange
//        let unselectedColor = UIColor.blue
        
//        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: unselectedColor,NSFontAttributeName: UIFont(name: "handy", size: 30) as Any], for: .normal)
//        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: selectedColor,NSFontAttributeName: UIFont(name: "handy", size: 30) as Any], for: .selected)
        
//        if let items = self.tabBar.items {
//            for item in items {
//                if let image = item.image {
//                    item.image = image.withRenderingMode( .alwaysOriginal )
////                    item.selectedImage = UIImage(named: "(Imagename)-a")?.withRenderingMode(.alwaysOriginal)
//                }
//            }
//        }
    }

    override func viewWillAppear(_ animated: Bool) {
        _ = self.tabBarController?.selectedIndex = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
