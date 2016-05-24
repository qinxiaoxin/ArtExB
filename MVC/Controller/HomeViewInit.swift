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

extension HomeViewController {
    
    func fetchModel() {
        let model1 = EXBHomeModel(mainTitle: "New Releases", secondTitle: "New albums from Jennifer Nettles, Meghan Trainor and James Blake headline this week's new releases, and also catch our reviews for the recent albums from Radiohead and Drake.", coverURL: "http://hwcdn.allmusic.com/cms/3809/home_newreleases.jpg")
        eXBArray.append(model1)
        let model2 = EXBHomeModel(mainTitle: "Why Pierce the Veil Frontman Vic Fuentes Is Especially Proud of New Album ‘Misadventures’", secondTitle: "Taking four years in between albums gave Fuentes the time to shape the record he really wanted to make, which the band will be playing in full on its upcoming tour.", coverURL: "http://hwcdn.allmusic.com/cms/3808/home_piercetheveil.jpg")
        eXBArray.append(model2)
        let model3 = EXBHomeModel(mainTitle: "AFI’s Davey Havok and Jade Puget Hit The Road With Dark Electronica Project Blaqk Audio", secondTitle: "​The R&B and soul revivalist talks about how his experiences with sampling led to the creation of his current musical persona, how he developed his falsetto vocal style and what music he used to annoy his parents.", coverURL: "http://hwcdn.allmusic.com/cms/3801/home_blaqkaudio.jpg")
        eXBArray.append(model3)
        let model4 = EXBHomeModel(mainTitle: "Mayer Hawthorne Strives To Put On “One Of The Best Live Shows In The World”", secondTitle: "Taking four years in between albums gave Fuentes the time to shape the record he really wanted to make, which the band will be playing in full on its upcoming tour.", coverURL: "http://hwcdn.allmusic.com/cms/3797/home_mayerhawthorn.jpg")
        eXBArray.append(model4)
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