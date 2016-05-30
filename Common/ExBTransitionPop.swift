//
//  ExBTransitionPop.swift
//  ArtExB
//
//  Created by Xin Qin on 5/30/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import UIKit

class ExBTransitionPop: NSObject, UIViewControllerAnimatedTransitioning {

    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.3
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        let fromVC = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)! as UIViewController
        let toVC = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)! as UIViewController
        let container = transitionContext.containerView()
        container?.addSubview(toVC.view)
        container?.bringSubviewToFront(fromVC.view)
        
        let initalFrame = transitionContext.initialFrameForViewController(fromVC)
        
        UIView.animateWithDuration(transitionDuration(transitionContext), delay: 0, options: .CurveLinear, animations: {
            fromVC.view.frame = CGRectMake(initalFrame.width, 0, initalFrame.width, initalFrame.height)
            
        }) { (finished: Bool) in
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled())
        }
    }
}
