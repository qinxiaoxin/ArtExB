//
//  ViewController.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    var eXBCollectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

