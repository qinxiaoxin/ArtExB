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

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("EXBCell", forIndexPath: indexPath) as! EXBCollectionViewCell
//        cell.coverImageView.kf_setImageWithURL(NSURL(string: eXBArray[indexPath.row].coverURL)!)
        cell.coverImageView.image = UIImage(named: eXBArray[indexPath.row].coverURL)
        cell.name.text = eXBArray[indexPath.row].name
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
        searchTextField.resignFirstResponder()
        let dvc = storyboard?.instantiateViewControllerWithIdentifier("DetailVC") as! DetailViewController
        dvc.eXBHModel = eXBArray[indexPath.row]
        dvc.transitioningDelegate = self
        presentViewController(dvc, animated: true, completion: nil)
        
    }

}