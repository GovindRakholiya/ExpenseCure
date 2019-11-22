//
//  MyTabBarController.swift
//  Expensecure
//
//  Created by Tops on 22/11/19.
//  Copyright © 2019 Coddiction. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
}

extension MyTabBarController: UITabBarControllerDelegate {

    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        if (toVC is MenuViewController) || (fromVC is MenuViewController){
            return MyTransition(viewControllers: tabBarController.viewControllers)
        }
        else{
            return nil
        }
        
    }
}
