//
//  LoadingController.swift
//  a2zServis
//
//  Created by i Daliri on 5/3/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit

class LoadingController: UIViewController {

    @IBOutlet weak var loadingIconView: UIImageView!
    
    let showVCIdentifire = "showViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // I'm Here...
        self.rotateLoading()
        self.setupLoader()
    }


    private func setupLoader() {
        perform(#selector(self.showFeed), with: nil, afterDelay: 1)
    }
    
    func showFeed() {
        performSegue(withIdentifier: self.showVCIdentifire, sender: self)
    }
    
    func rotateLoading() {
        UIView.animate(withDuration: 0.9, delay: 0, options: .curveLinear, animations: { 
            self.loadingIconView!.transform = self.loadingIconView!.transform.rotated(by: CGFloat(M_PI))
        }, completion: { finished in
            self.rotateLoading()
        })
    }
}
