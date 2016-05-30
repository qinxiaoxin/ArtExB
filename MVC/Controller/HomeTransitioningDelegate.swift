//
//  HomeTransitioningDelegate.swift
//  ArtExB
//
//  Created by Xin Qin on 5/30/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import Foundation
import UIKit

extension HomeViewController: UIViewControllerTransitioningDelegate {
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return ExBTransitionPush()
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return ExBTransitionPop()
    }
    
}
