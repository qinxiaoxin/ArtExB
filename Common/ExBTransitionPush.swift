//
//  ExBTransitionPush.swift
//  ArtExB
//
//  Created by Xin Qin on 5/30/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import UIKit

class ExBTransitionPush: NSObject, UIViewControllerAnimatedTransitioning {

    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.3
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        let fromVC = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey) as! HomeViewController
        let toVC = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey) as! DetailViewController
        let container = transitionContext.containerView()
        container?.addSubview(toVC.view)
        
        let initalFrame = transitionContext.initialFrameForViewController(fromVC)
        toVC.view.frame = CGRectMake(initalFrame.width, 0, initalFrame.width, initalFrame.height)
        
        UIView.animateWithDuration(transitionDuration(transitionContext), delay: 0, options: .CurveLinear, animations: {
                toVC.view.frame = CGRectMake(0, 0, initalFrame.width, initalFrame.height)
        }) { (finished: Bool) in
                transitionContext.completeTransition(!transitionContext.transitionWasCancelled())
        }
        
    }
    
}
