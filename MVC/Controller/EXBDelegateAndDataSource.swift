//
//  EXBDelegateAndDataSource.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("EXBCell", forIndexPath: indexPath) as! EXBCollectionViewCell
//        let data = NSData(contentsOfFile: NSBundle.mainBundle().pathForResource("Directions", ofType: "geojson")!)
        
        cell.coverImageView.image = nil
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

}