//
//  IntroViewController.swift
//  a2zServis
//
//  Created by i Daliri on 5/7/17.
//  Copyright © 2017 a2zApp. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var logo: UIImageView!
    
    let pagerViewControllerIdentifier = "IntroPagerViewController"
    let introContentViewControllerIdentifier = "IntroContentViewController"
    let showSignUpIdentifier = "showSignUpVC"
    
    var pagerViewController: IntroPagerViewController!
    var index = 0
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Game is on ...
        self.reset()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.view.bringSubview(toFront: self.skipButton)
        self.view.bringSubview(toFront: self.logo)
    }
    
    // MARK : - PageViewController
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        self.index = (viewController as! IntroContentViewController).pageIndex!
        if(index == 0){
            return nil
        }
        
        index -= 1
        if index < 2 {
            self.skipButton.setTitle("Skip", for: .normal)
        }
        return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        self.index = (viewController as! IntroContentViewController).pageIndex!
        if(index == NSNotFound) {
            return nil
        }
        
        index += 1
        
        if(index == Strings.introContents.count) {
            return nil
        }
        
        if index == 2 {
            self.skipButton.setTitle("Next", for: .normal)
        }
        
        return self.viewControllerAtIndex(index)
    }
    
    // MARK: Internal
    func viewControllerAtIndex(_ index: Int) -> UIViewController? {
        if((Strings.introContents.count == 0) || (index >= Strings.introContents.count)) {
            return nil
        }
        
        let introContentViewController = self.storyboard?.instantiateViewController(withIdentifier: self.introContentViewControllerIdentifier) as! IntroContentViewController
        introContentViewController.descriptionText = Strings.introContents[index]
        introContentViewController.pageIndex = index
        
        return introContentViewController
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return Strings.introContents.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    func reset() {
        /* Getting the page View controller */
        self.pagerViewController = self.storyboard?.instantiateViewController(withIdentifier: self.pagerViewControllerIdentifier) as! IntroPagerViewController
        self.pagerViewController.dataSource = self
        self.pagerViewController.delegate = self
        
        let introContentViewController = self.viewControllerAtIndex(0)
        self.pagerViewController.setViewControllers([introContentViewController!], direction: UIPageViewControllerNavigationDirection.forward, animated: true, completion: nil)
        self.addChildViewController(pagerViewController)
        self.view.addSubview(pagerViewController.view)
        self.pagerViewController.didMove(toParentViewController: self)
    }

    @IBAction func skipTapped(_ sender: Any) {
//        User.setIntroSeen(hasSeen: true)
        performSegue(withIdentifier: self.showSignUpIdentifier, sender: self)
    }
}
