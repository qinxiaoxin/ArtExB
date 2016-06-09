//
//  WebViewController.swift
//  ArtExB
//
//  Created by Xin Qin on 5/29/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    let backGroundView = UIView()
    
    let shareView = ShareView()
    
    var url: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
        
        webView.loadRequest(NSURLRequest(URL: NSURL(string: url!)!))
        
    }
    
    private func initView() {
        //nav bar
        navigationController?.navigationBar.topItem?.title = "ARTEXB"
        navigationController?.navigationBar.barTintColor = ArtExBRGB("000000")
        navigationController?.navigationBar.translucent = false
        
        let backBtn = UIButton()
        backBtn.frame = CGRectMake(0, 0, 24, 24)
        backBtn.setImage(UIImage(named: "back"), forState: .Normal)
        backBtn.addTarget(self, action: #selector(WebViewController.backAction), forControlEvents: .TouchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backBtn)
        
        let shareBtn = UIButton()
        shareBtn.frame = CGRectMake(0, 0, 24, 24)
        shareBtn.setImage(UIImage(named: "share"), forState: .Normal)
        shareBtn.addTarget(self, action: #selector(WebViewController.shareAction), forControlEvents: .TouchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: shareBtn)
        
        //status bar
        _ = NSDictionary(object: UIColor.whiteColor(),forKey: NSForegroundColorAttributeName)
        navigationController?.navigationBar.barStyle = UIBarStyle.Black
        
        //share panel view
        backGroundView.frame = CGRectMake(0, 0, view.frame.width, view.frame.height)
        backGroundView.backgroundColor = UIColor.blackColor()
        backGroundView.alpha = 0.8
        backGroundView.hidden = true
        backGroundView.userInteractionEnabled = true
        backGroundView.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(WebViewController.scrollBack)))
        navigationController?.view.addSubview(backGroundView)
        
        shareView.frame = CGRectMake(0, view.frame.height, view.frame.width, 280)
        backGroundView.addSubview(shareView)
    }
    
    func backAction() {
        dismissViewControllerAnimated(true, completion: nil)
    }

    func shareAction() {
        UIView.animateWithDuration(0.3) {
            self.shareView.frame = CGRectMake(0, (self.navigationController?.view.frame.height)! - 280, (self.navigationController?.view.frame.width)!, 280)
            self.backGroundView.hidden = false
        }
    }
    
    func scrollBack() {
        UIView.animateWithDuration(0.3) {
            self.shareView.frame = CGRectMake(0, (self.navigationController?.view.frame.height)!, (self.navigationController?.view.frame.width)!, 280)
            self.backGroundView.hidden = true
        }
    }
    

    

}
