//
//  HomeViewInit.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import Foundation
import UIKit

let EXBCollectionViewTopInset: CGFloat = 50
let EXBCollectionViewBottomInset: CGFloat = 30

extension HomeViewController {
    
    func fetchModel() {
        
        
        
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