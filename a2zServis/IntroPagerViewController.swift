//
//  IntroPageViewController.swift
//  a2zServis
//
//  Created by i Daliri on 5/7/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit

class IntroPagerViewController: UIPageViewController {
    
    override func viewDidLayoutSubviews() {
        for subView in self.view.subviews {
            if subView is UIScrollView {
                subView.frame = self.view.bounds
            } else if subView is UIPageControl {
                self.view.bringSubview(toFront: subView)
                let viewHeight = self.view.bounds.height
                let pageControl = subView as! UIPageControl
                let pageControlHeight = pageControl.frame.size.height
                pageControl.pageIndicatorTintColor = UIColor.orange
                pageControl.pageIndicatorTintColor = UIColor.gray
                pageControl.currentPageIndicatorTintColor = UIColor.orange
                pageControl.frame = CGRect(x: pageControl.frame.origin.x + pageControl.frame.size.width / 4, y: (viewHeight) - 32 - pageControlHeight, width: pageControl.frame.size.width / 2, height: pageControlHeight)
            }
        }
        super.viewDidLayoutSubviews()
    }
}
