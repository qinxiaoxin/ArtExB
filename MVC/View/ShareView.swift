//
//  ShareView.swift
//  ArtExB
//
//  Created by Xin Qin on 6/8/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import UIKit

class ShareView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.whiteColor()
        
        let tip = UILabel()
        tip.text = "Share to"
        tip.textColor = UIColor.blackColor()
        tip.font = UIFont.systemFontOfSize(15)
        tip.sizeToFit()
        addSubview(tip)
        tip.snp_makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.top.equalTo(self).offset(10)
        }
        
        let facebook = UIButton()
        facebook.setImage(UIImage(named: "share_facebook"), forState: .Normal)
        addSubview(facebook)
        facebook.snp_makeConstraints { (make) in
            make.left.equalTo(self).offset(40)
            make.top.equalTo(tip.snp_bottom).offset(20)
            make.width.equalTo(20)
            make.height.equalTo(40)
        }
        
        let fb = UILabel()
        fb.text = "Facebook"
        fb.textColor = UIColor.blackColor()
        fb.font = UIFont.systemFontOfSize(13)
        fb.sizeToFit()
        addSubview(fb)
        fb.snp_makeConstraints { (make) in
            make.centerX.equalTo(facebook)
            make.top.equalTo(facebook.snp_bottom).offset(10)
        }
        
        let twitter = UIButton()
        twitter.setImage(UIImage(named: "share_twitter"), forState: .Normal)
        addSubview(twitter)
        twitter.snp_makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.top.equalTo(tip.snp_bottom).offset(20)
            make.width.height.equalTo(40)
        }
        
        let tw = UILabel()
        tw.text = "Twitter"
        tw.textColor = UIColor.blackColor()
        tw.font = UIFont.systemFontOfSize(13)
        tw.sizeToFit()
        addSubview(tw)
        tw.snp_makeConstraints { (make) in
            make.centerX.equalTo(twitter)
            make.top.equalTo(twitter.snp_bottom).offset(10)
        }
        
        let moment = UIButton()
        moment.setImage(UIImage(named: "share_compent"), forState: .Normal)
        addSubview(moment)
        moment.snp_makeConstraints { (make) in
            make.right.equalTo(self).offset(-30)
            make.top.equalTo(tip.snp_bottom).offset(20)
            make.width.height.equalTo(40)
        }
        
        let mo = UILabel()
        mo.text = "Moment"
        mo.textColor = UIColor.blackColor()
        mo.font = UIFont.systemFontOfSize(13)
        mo.sizeToFit()
        addSubview(mo)
        mo.snp_makeConstraints { (make) in
            make.centerX.equalTo(moment)
            make.top.equalTo(moment.snp_bottom).offset(10)
        }
        
        let friends = UIButton()
        friends.setImage(UIImage(named: "share_weixin"), forState: .Normal)
        addSubview(friends)
        friends.snp_makeConstraints { (make) in
            make.left.equalTo(self).offset(30)
            make.top.equalTo(fb.snp_bottom).offset(35)
            make.width.equalTo(40)
            make.height.equalTo(30)
        }
        
        let fr = UILabel()
        fr.text = "Friends"
        fr.textColor = UIColor.blackColor()
        fr.font = UIFont.systemFontOfSize(13)
        fr.sizeToFit()
        addSubview(fr)
        fr.snp_makeConstraints { (make) in
            make.centerX.equalTo(friends)
            make.top.equalTo(friends.snp_bottom).offset(10)
        }
        
        let weibo = UIButton()
        weibo.setImage(UIImage(named: "share_weibo"), forState: .Normal)
        addSubview(weibo)
        weibo.snp_makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.top.equalTo(tw.snp_bottom).offset(30)
            make.width.equalTo(40)
            make.height.equalTo(35)
        }
        
        let we = UILabel()
        we.text = "Weibo"
        we.textColor = UIColor.blackColor()
        we.font = UIFont.systemFontOfSize(13)
        we.sizeToFit()
        addSubview(we)
        we.snp_makeConstraints { (make) in
            make.centerX.equalTo(weibo)
            make.top.equalTo(weibo.snp_bottom).offset(10)
        }
        
        let copy = UIButton()
        copy.setImage(UIImage(named: "share_copy"), forState: .Normal)
        addSubview(copy)
        copy.snp_makeConstraints { (make) in
            make.right.equalTo(self).offset(-30)
            make.top.equalTo(mo.snp_bottom).offset(25)
            make.width.height.equalTo(40)
        }
        
        let co = UILabel()
        co.text = "Copy Url"
        co.textColor = UIColor.blackColor()
        co.font = UIFont.systemFontOfSize(13)
        co.sizeToFit()
        addSubview(co)
        co.snp_makeConstraints { (make) in
            make.centerX.equalTo(copy)
            make.top.equalTo(copy.snp_bottom).offset(10)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
