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
    
    var model: EXBModel?
    
    let backGroundView = UIView()
    
    var url: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
        
        webView.loadRequest(NSURLRequest(URL: NSURL(string: model!.webURL)!))
        
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
        
    }
    
    func backAction() {
        dismissViewControllerAnimated(true, completion: nil)
    }

    func shareAction() {
        let text = model!.artist
        let image = UIImage(named: model!.coverURL)
        let url = NSURL(string: model!.webURL)
        let items: [AnyObject] = [text, image!, url!] ?? []
        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: [WeChatSessionActivity(), WeChatMomentsActivity()])
        activityVC.excludedActivityTypes = [
        UIActivityTypeMail,
        UIActivityTypeMessage,
        UIActivityTypeAddToReadingList,
        UIActivityTypePrint,
        UIActivityTypeAssignToContact,
        UIActivityTypeSaveToCameraRoll,
        UIActivityTypeAirDrop,
        UIActivityTypePostToFlickr,
        UIActivityTypePostToVimeo
        ]
        self.presentViewController(activityVC,
                                   animated: true,
                                   completion: nil)
    }

}
