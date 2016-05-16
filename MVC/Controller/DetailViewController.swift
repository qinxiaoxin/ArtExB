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
        }
    }
    
    @IBOutlet weak var coverImageView: UIImageView!
    
    @IBOutlet weak var logoImageView: UIImageView! {
        didSet {
            logoImageView.userInteractionEnabled = true
            logoImageView.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(DetailViewController.backHomepage)))
        }
    }
    
    func backHomepage() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    private func initView() {
        if let model = eXBHModel {
            coverImageView.kf_setImageWithURL(NSURL(string: model.coverURL)!)
        }
    }

}
