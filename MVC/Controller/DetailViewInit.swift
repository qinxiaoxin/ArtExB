//
//  DetailViewInit.swift
//  ArtExB
//
//  Created by Xin Qin on 5/16/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

let MagicLabelContentSize: CGFloat = 558

//@IBOutlet weak var eXBName: UILabel!
//
//@IBOutlet weak var eXBArtist: UILabel!
//
//@IBOutlet weak var eXBCurator: UILabel!
//
//@IBOutlet weak var eXBTime: UILabel!
//
//@IBOutlet weak var eXBAdress: UILabel!
//
//@IBOutlet weak var eXBArticle: UILabel!

extension DetailViewController {
    
    //MARK: - Normal Methods
    
    func initView() {
        if let model = eXBHModel {
            coverImageView.kf_setImageWithURL(NSURL(string: model.coverURL)!)
            eXBName.text = model.mainTitle
            
            //新加展开按钮
            if eXBArticle.intrinsicContentSize().width > MagicLabelContentSize {
                let extendButton = UIButton()
                extendButton.setTitle("More", forState: .Normal)
                extendButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
                extendButton.titleLabel?.font = UIFont.systemFontOfSize(15)
                extendButton.addTarget(self, action: #selector(DetailViewController.extendAction), forControlEvents: .TouchUpInside)
                view.addSubview(extendButton)
                extendButton.snp_makeConstraints(closure: { (make) in
                    make.top.equalTo(eXBArticle.snp_bottom)
                    make.centerX.equalTo(eXBName)
                    make.width.equalTo(80)
                    make.height.equalTo(30)
                })
                
                enterButton.snp_updateConstraints(closure: { (make) in
                    make.top.equalTo(extendButton.snp_bottom).offset(10)
                })
                
            }
        }
        
        print("eXBArticle.intrinsicContentSize() = \(eXBArticle.intrinsicContentSize())")
    }
    
    
    
    
}