//
//  EXBDelegateAndDataSource.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("EXBCell", forIndexPath: indexPath) as! EXBCollectionViewCell
        cell.coverImageView.kf_setImageWithURL(NSURL(string: eXBArray[indexPath.row].coverURL)!)
        cell.mainTitleLabel.text = eXBArray[indexPath.row].mainTitle
        cell.secondTitleLabel.text = eXBArray[indexPath.row].secondTitle
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eXBArray.count
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let dvc = storyboard?.instantiateViewControllerWithIdentifier("DetailVC") as! DetailViewController
        dvc.eXBHModel = eXBArray[indexPath.row]
        presentViewController(dvc, animated: true, completion: nil)
        
    }

}