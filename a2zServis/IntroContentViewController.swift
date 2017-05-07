//
//  IntroContentViewController.swift
//  a2zServis
//
//  Created by i Daliri on 5/7/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit

class IntroContentViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!
    
    var pageIndex: Int?
    var descriptionText: String!
    override func viewDidLoad() {
        super.viewDidLoad()

        // I'm Here...
        self.descriptionLabel.text = self.descriptionText
    }


}
