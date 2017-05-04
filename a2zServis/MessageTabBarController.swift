//
//  MessageTabBarController.swift
//  a2zServis
//
//  Created by i Daliri on 5/3/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit

class MessageTabBarController: UIViewController {

    @IBOutlet weak var test: UITextView!
    @IBOutlet weak var tabBaritem: UITabBarItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        let appearance = UITabBarItem.appearance()
//        let attributes: [String: AnyObject] = [NSFontAttributeName:UIFont(name: "handy", size: 50)!, NSForegroundColorAttributeName: UIColor.orange]
//        appearance.setTitleTextAttributes(attributes, for: .normal)
        
//        test.text = "\e60a"
//        test.text = "\u{e609}"
//        tabBaritem.isEnabled = true
//        tabBaritem.accessibilityElementsHidden = false
//        tabBaritem.title = "\u{e609}"
//        tabBaritem.badgeColor = UIColor.black
//        tabBarItem = UITabBarItem(title: "\u{e609}", image: UIImage(named: ""), selectedImage: UIImage(named: ""))
//        test.text = "\u{e61A}"
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
