//
//  DetailViewController.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var eXBHModel: EXBHomeModel?

    @IBOutlet weak var searchTextField: UITextField! {
        didSet {
            let leftView = UIView()
            leftView.frame = CGRectMake(0, 0, 10, 30);
            searchTextField.leftView = leftView
            searchTextField.leftViewMode = .Always
            searchTextField.attributedPlaceholder = NSAttributedString(string: "Search", attributes: [NSForegroundColorAttributeName : UIColor.grayColor()])
            searchTextField.layer.borderColor = UIColor.grayColor().CGColor
            searchTextField.layer.borderWidth = 1.0
            searchTextField.delegate = self
        }
    }
    
    @IBOutlet weak var coverImageView: UIImageView!
    
    @IBOutlet weak var logoImageView: UIImageView! {
        didSet {
            logoImageView.userInteractionEnabled = true
            logoImageView.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(DetailViewController.backHomepage)))
        }
    }
    
    @IBOutlet weak var eXBName: UILabel!
    
    @IBOutlet weak var eXBArtist: UILabel!
    
    @IBOutlet weak var eXBCurator: UILabel!
    
    @IBOutlet weak var eXBTime: UILabel!
    
    @IBOutlet weak var eXBVenue: UILabel!
    
    @IBOutlet weak var eXBArticle: UILabel!
    
    var enterButton: UIButton!
    
    
    func backHomepage() {
        (self.transitioningDelegate as! UIViewController).dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.transitioningDelegate = self
        
        initView()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.5) { 
            self.enterButton.alpha = 1.0
            self.enterButton.layer.cornerRadius = self.enterButton.frame.size.height / 2
        }
    }
    
    
    //MARK: - Action
    
    func extendAction() {
        
    }
    
    func enterAction() {
        let vc: WebViewController = storyboard?.instantiateViewControllerWithIdentifier("WebVC") as! WebViewController
        vc.url = eXBHModel?.webURL
        let nav = UINavigationController(rootViewController: vc)
        nav.transitioningDelegate = self
        presentViewController(nav, animated: true, completion: nil)
    }

}
