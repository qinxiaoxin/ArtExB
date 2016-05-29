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
        
        //Family Name
//        for family in UIFont.familyNames() {
//            print("family = \(family)")
//            for font in UIFont.fontNamesForFamilyName(family) {
//                print("font = \(font)")
//            }
//        }
        
        if let model = eXBHModel {
            
            //名字
            eXBName.text = model.mainTitle
            
            //艺术家
            eXBArtist.text = model.artist
            
            //策展人
            eXBCurator.text = model.curator
            
            //时间
            eXBCurator.text = model.time
            
            //场地
            eXBCurator.text = model.venue
            
            //文章介绍
            eXBArticle.text = model.artical
            
            //封面
            coverImageView.kf_setImageWithURL(NSURL(string: model.coverURL)!)
            eXBName.text = model.mainTitle
            
            //Enter按钮
            enterButton = UIButton()
            enterButton.setTitle("Enter", forState: .Normal)
            enterButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            enterButton.backgroundColor = UIColor.blackColor()
            enterButton.titleLabel?.font = UIFont(name: "AvenirNext-Bold", size: 18)
            enterButton.addTarget(self, action: #selector(DetailViewController.enterAction), forControlEvents: .TouchUpInside)
            view.addSubview(enterButton)
            enterButton.alpha = 0
            
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
                    make.centerX.equalTo(view)
                    make.width.equalTo(80)
                    make.height.equalTo(30)
                })
                
                enterButton.snp_makeConstraints(closure: { (make) in
                    make.top.equalTo(extendButton.snp_bottom).offset(10)
                    make.centerX.equalTo(extendButton)
                    make.left.equalTo(30)
                    make.right.equalTo(-30)
                })
            } else {
                enterButton.snp_makeConstraints(closure: { (make) in
                    make.top.equalTo(eXBArticle.snp_bottom).offset(10)
                    make.left.equalTo(30)
                    make.right.equalTo(-30)
                })
            }
        }
        
    }
    
    
    
    
}