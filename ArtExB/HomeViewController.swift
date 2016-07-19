//
//  ViewController.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import UIKit

var MenuOpen = false
let ArtMenuFullHeight: CGFloat = 300
let ArtExBColor = UIColor(red: 80.0/255.0, green: 227.0/255.0, blue: 194.0/255.0, alpha: 1.0)

enum ArtExBSelectLanguage: Int {
    case Artist = 0
    case Curator
    case Venue
    
    var Language: String {
        switch self {
        case .Artist:
            return "artist"
        case .Curator:
            return "curator"
        case .Venue:
            return "venue"
        }
    }
}

class HomeViewController: UIViewController {
    
    @IBOutlet weak var blurViewContainer: UIView!
    var eXBArray = [EXBModel]()
    
    var blurView : UIVisualEffectView?
    let darkBlur = UIBlurEffect(style: UIBlurEffectStyle.Dark)
    
    var menuLastHeight: CGFloat?
    
    @IBOutlet weak var topBarView: UIView!
    
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
    
    @IBOutlet weak var logoImageView: UIImageView! {
        didSet {
//            logoImageView.userInteractionEnabled = true
//            logoImageView.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(HomeViewController.logoAction)))
        }
    }
    
    @IBOutlet weak var topBarViewHeight: NSLayoutConstraint!
    
    
    @IBOutlet weak var artistButton: UIButton!
    @IBOutlet weak var curatorButton: UIButton!
    @IBOutlet weak var venueButton: UIButton!
    
    @IBOutlet weak var aboutLabel: UILabel!

    var eXBCollectionView: UICollectionView?
    
    var menuLanguage: ArtExBSelectLanguage? {
        didSet {
            resetMenu()
            switch self.menuLanguage! {
            case .Artist:
                self.artistButton.setTitleColor(ArtExBColor, forState: .Normal)
            case .Curator:
                self.curatorButton.setTitleColor(ArtExBColor, forState: .Normal)
            case .Venue:
                self.venueButton.setTitleColor(ArtExBColor, forState: .Normal)
            }
        }
    }
    
    func resetMenu() {
        self.artistButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.curatorButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.venueButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.transitioningDelegate = self
        
        fetchTimeLine()
        
        blurView = UIVisualEffectView(effect: darkBlur)
        
        menuLanguage = .Artist
        
    }
    
    
    //MARK: - Action
    
    func logoAction(sender: AnyObject) {
        //分类条目
        if MenuOpen {
            MenuOpen = false
            
            artistButton.hidden = true
            curatorButton.hidden = true
            venueButton.hidden = true
            aboutLabel.hidden = true
            
            UIView.animateWithDuration(0.3, delay: 0.1, options: .AllowUserInteraction, animations: {
                    if let blurView = self.blurView {
                        blurView.alpha = 0
                    }
                }, completion: nil)
            
            UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.89, initialSpringVelocity: 15, options: .AllowUserInteraction, animations: { () -> Void in
                
                    if let menuLastHeight = self.menuLastHeight {
                        self.topBarViewHeight.constant = menuLastHeight
                    }
                
                    self.view.layoutIfNeeded()
                
                    if let blurView = self.blurView {
                        blurView.frame = self.blurViewContainer.bounds
                    }
                
                }, completion: { finish in
                    self.handleTopViewBlurViewExisit(self.eXBCollectionView!)
            })
        } else {
            menuLastHeight = topBarView.frame.height
            MenuOpen = true
            self.addBlurViewOnTopView()
            
//            artistButton.hidden = false
//            curatorButton.hidden = false
//            venueButton.hidden = false
            aboutLabel.hidden = false
            aboutLabel.text = NSLocalizedString("ABOUT_EXB", comment: "ARTEXB is an experimental arena that we invite the excellent Artist, Architect, Designer, and Photographer to join. We will produce the various spheral displays in this global artistic terminal. And we desire to share the wonderful art exhibition, the innovative spatial design and millions of creative ideas with YOU.")
            
            UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.89, initialSpringVelocity: 15, options: .AllowUserInteraction, animations: { () -> Void in
                
                    self.topBarViewHeight.constant = ArtMenuFullHeight
                    self.view.layoutIfNeeded()
                
                    if let blurView = self.blurView {
                        blurView.frame = self.blurViewContainer.bounds
                    }
                
                }, completion: nil)
        }
    }
    
    func handleTopViewBlurViewExisit(scrollView: UIScrollView) {
        if let blurView = blurView {
            blurView.removeFromSuperview()
            blurView.alpha = 1.0
        }
    }
    
    func addBlurViewOnTopView() {
        if let blurView = blurView {
            blurView.frame = blurViewContainer.bounds
            blurViewContainer.addSubview(blurView)
        }
    }
    
    
    
    @IBAction func artistAction(sender: UIButton) {
        handleLanguage(.Artist)
    }
    
    @IBAction func curatorAction(sender: UIButton) {
        handleLanguage(.Curator)
    }
    
    @IBAction func venueAction(sender: UIButton) {
        handleLanguage(.Venue)
    }
    
    
    func handleLanguage(language: ArtExBSelectLanguage) {
        logoAction(self)
        
        if menuLanguage != language {
            menuLanguage = language
        }
        
    }
    
    
    //禁止横屏
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return .Portrait
    }

}

