//
//  HomeViewInit.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    func fetchTimeLine() {
        if let exBCollectionView = eXBCollectionView {
            exBCollectionView.hidden = false
        } else {
            eXBCollectionView = UICollectionView(frame: CGRectMake(0, 0, view.frame.width, view.frame.height), collectionViewLayout: EXBFlowLayout())
            eXBCollectionView?.backgroundColor = UIColor.clearColor()
            eXBCollectionView?.registerNib(UINib(nibName: "EXBCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "EXBCell")
            eXBCollectionView?.dataSource = self
            eXBCollectionView?.delegate = self
            eXBCollectionView?.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 30, right: 0)
            view.addSubview(eXBCollectionView!)
        }
    }
    
}