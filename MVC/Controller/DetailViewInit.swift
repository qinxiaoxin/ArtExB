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
            eXBName.text = NSLocalizedString(model.name, comment: model.name)
            
            //艺术家
            if model.artist != "" {
                eXBArtist.text = NSLocalizedString("Artist:", comment: "Artist:") + NSLocalizedString(model.artist, comment: model.artist)
            } else {
                eXBArtist.hidden = true
                
            }
            
            //策展人
            if model.curator != "" {
                eXBCurator.text = NSLocalizedString("Curator:", comment: "Curator:") + NSLocalizedString(model.curator, comment: model.curator)
            } else if model.curator == "" && model.artist == ""{
                eXBCurator.hidden = true
                timeTopConstraint.constant -= 40
            } else {
                eXBCurator.hidden = true
                timeTopConstraint.constant -= 40 - 12
            }
            
            
            //时间
            eXBTime.text = NSLocalizedString("Time:", comment: "Time:") + NSLocalizedString(model.time, comment: model.time)
            
            //场地
            eXBVenue.text = NSLocalizedString("Venue:", comment: "Venue:") + NSLocalizedString(model.venue, comment: model.venue)
            
            //文章介绍
            eXBArticle.text = NSLocalizedString(model.artical, comment: model.artical)
            
            //封面
//            coverImageView.kf_setImageWithURL(NSURL(string: model.coverURL)!)
            coverImageView.image = UIImage(named: model.coverURL)
            
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