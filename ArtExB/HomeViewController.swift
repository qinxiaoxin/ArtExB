//
//  ViewController.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import UIKit

var MenuOpen = false
let ArtMenuFullHeight: CGFloat = 280
let ArtExBColor = UIColor(red: 80.0/255.0, green: 227.0/255.0, blue: 194.0/255.0, alpha: 1.0)

enum ArtExBSelectLanguage: Int {
    case English = 0;
    case Chinese
    
    var Language: String {
        switch self {
        case .English:
            return "english"
        case .Chinese:
            return "chinese"
        }
    }
}

class HomeViewController: UIViewController {
    
    var eXBArray = [EXBHomeModel]()
    
    var blurView : UIVisualEffectView?
    let darkBlur = UIBlurEffect(style: UIBlurEffectStyle.Dark)
    
    var menuLastHeight: CGFloat?
    
    
    @IBOutlet weak var topBarView: UIView!
    
    @IBOutlet weak var blurViewContainer: UIView!
    
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
            logoImageView.userInteractionEnabled = true
            logoImageView.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(HomeViewController.logoAction)))
        }
    }
    
    @IBOutlet weak var topBarViewHeight: NSLayoutConstraint!
    
    
    @IBOutlet weak var englishButton: UIButton!
    @IBOutlet weak var chineseButton: UIButton!

    var eXBCollectionView: UICollectionView?
    
    
    var menuLanguage: ArtExBSelectLanguage? {
        didSet {
            resetMenu()
            switch self.menuLanguage! {
            case .English:
                self.englishButton.setTitleColor(ArtExBColor, forState: .Normal)
            case .Chinese:
                self.chineseButton.setTitleColor(ArtExBColor, forState: .Normal)
            }
        }
    }
    
    func resetMenu() {
        self.englishButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.chineseButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchTimeLine()
        
        blurView = UIVisualEffectView(effect: darkBlur)
        
        menuLanguage = .English
        
    }
    
    
    //MARK: - Action
    
    func logoAction(sender: AnyObject) {
        //分类条目
        if MenuOpen {
            MenuOpen = false
            
            englishButton.hidden = true
            chineseButton.hidden = true
            
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
            
            englishButton.hidden = false
            chineseButton.hidden = false
            
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
    
    
    
    @IBAction func english(sender: UIButton) {
        handleLanguage(.English)
    }
    
    @IBAction func chinese(sender: UIButton) {
        handleLanguage(.Chinese)
    }
    
    func handleLanguage(language: ArtExBSelectLanguage) {
        logoAction(self)
        
        if menuLanguage != language {
            menuLanguage = language
        }
        
    }
    


}

