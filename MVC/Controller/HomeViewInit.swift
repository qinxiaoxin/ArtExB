//
//  HomeViewInit.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

let EXBCollectionViewTopInset: CGFloat = 50
let EXBCollectionViewBottomInset: CGFloat = 30

//let mainTitle: String
//let secondTitle: String
//let coverURL: String
//let webURL: String
//let artist: String
//let curator: String
//let time: String
//let venue: String
//let artical: String

extension HomeViewController {
    
    func fetchModel() {
        let model0 = EXBHomeModel(mainTitle: "自在途程——靳尚谊油画语言研究展", secondTitle: "New albums from Jennifer Nettles", coverURL: "http://hwcdn.allmusic.com/cms/3809/home_newreleases.jpg", webURL: "http://www.artistpano.com/JSY/?from=singlemessage&isappinstalled=0", artist: "艾未未", curator: "韩寒", time: "2015.6.6 - 9.6", venue: "Tokyo", artical: "Meghan Trainor and James Blake headline this week's new releases, and also catch our reviews for the recent albums from Radiohead and Drake.")
        eXBArray.append(model0)
        
        let model1 = EXBHomeModel(mainTitle: "第二届《诗书画》年度展——西湖", secondTitle: "Taking four years in between albums gave Fuentes the time to shape the record he really wanted to make, which the band will be playing in full on its upcoming tour.", coverURL: "http://hwcdn.allmusic.com/cms/3808/home_piercetheveil.jpg", webURL: "http://www.artistpano.com/WY/?from=singlemessage&isappinstalled=0", artist: "艾未未", curator: "韩寒", time: "2015.6.6 - 9.6", venue: "Tokyo", artical: "Meghan Trainor and James Blake headline this week's new releases, and also catch our reviews for the recent albums from Radiohead and Drake.")
        eXBArray.append(model1)
        
        let model2 = EXBHomeModel(mainTitle: "道行之而成·潘公凯作品展", secondTitle: "​The R&B and soul revivalist talks about how his experiences with sampling led to the creation of his current musical persona, how he developed his falsetto vocal style and what music he used to annoy his parents.", coverURL: "http://hwcdn.allmusic.com/cms/3801/home_blaqkaudio.jpg", webURL: "http://www.artistpano.com/DXZEC/?from=singlemessage&isappinstalled=0", artist: "艾未未", curator: "韩寒", time: "2015.6.6 - 9.6", venue: "Tokyo", artical: "Meghan Trainor and James Blake headline this week's new releases, and also catch our reviews for the recent albums from Radiohead and Drake.")
        eXBArray.append(model2)
        
        let model3 = EXBHomeModel(mainTitle: "幻真的宇宙——2013威尼斯钟飙艺术现场", secondTitle: "Taking four years in between albums gave Fuentes the time to shape the record he really wanted to make, which the band will be playing in full on its upcoming tour.", coverURL: "http://hwcdn.allmusic.com/cms/3797/home_mayerhawthorn.jpg", webURL: "http://www.weburner.com/pano/zb1/", artist: "艾未未", curator: "韩寒", time: "2015.6.6 - 9.6", venue: "Tokyo", artical: "Meghan Trainor and James Blake headline this week's new releases, and also catch our reviews for the recent albums from Radiohead and Drake.")
        eXBArray.append(model3)
        
        let model4 = EXBHomeModel(mainTitle: "保利十年·艺术品秋季拍卖会", secondTitle: "New albums from Jennifer Nettles, Meghan Trainor and James Blake headline this week's new releases, and also catch our reviews for the recent albums from Radiohead and Drake.", coverURL: "http://hwcdn.allmusic.com/cms/3809/home_newreleases.jpg", webURL: "http://www.weburner.com/pano/baoli1/?from=message&isappinstalled=0", artist: "艾未未", curator: "韩寒", time: "2015.6.6 - 9.6", venue: "Tokyo", artical: "Meghan Trainor and James Blake headline this week's new releases, and also catch our reviews for the recent albums from Radiohead and Drake.")
        eXBArray.append(model4)
        
        let model5 = EXBHomeModel(mainTitle: "瓯江草堂——海上画派精品展", secondTitle: "Taking four years in between albums gave Fuentes the time to shape the record he really wanted to make, which the band will be playing in full on its upcoming tour.", coverURL: "http://hwcdn.allmusic.com/cms/3808/home_piercetheveil.jpg", webURL: "http://ojctart.com/ojct/testDemo/index.html", artist: "艾未未", curator: "韩寒", time: "2015.6.6 - 9.6", venue: "Tokyo", artical: "Meghan Trainor and James Blake headline this week's new releases, and also catch our reviews for the recent albums from Radiohead and Drake.")
        eXBArray.append(model5)
        
        if eXBArray.count > 0 {
            eXBCollectionView?.reloadData()
        }
    }
    
    func fetchTimeLine() {
        eXBCollectionView = UICollectionView(frame: CGRectMake(0, 20, view.frame.width, view.frame.height), collectionViewLayout: EXBFlowLayout())
        eXBCollectionView?.backgroundColor = UIColor.clearColor()
        eXBCollectionView?.registerNib(UINib(nibName: "EXBCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "EXBCell")
        eXBCollectionView?.showsVerticalScrollIndicator = false
        eXBCollectionView?.dataSource = self
        eXBCollectionView?.delegate = self
        eXBCollectionView?.contentInset = UIEdgeInsets(top: EXBCollectionViewTopInset, left: 0, bottom: EXBCollectionViewBottomInset, right: 0)
        view.insertSubview(eXBCollectionView!, belowSubview: topBarView)
        if eXBCollectionView != nil {
            fetchModel()
        }
    }
    
    

}