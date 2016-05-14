//
//  EXBFlowLayout.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import UIKit

class EXBFlowLayout: UICollectionViewFlowLayout {
    override func prepareLayout() {
        super.prepareLayout()
        
        minimumLineSpacing = 15.0
    }
    
    var insertIndexPathSet = Set<NSIndexPath>()
    
    
    override func prepareForCollectionViewUpdates(updateItems: [UICollectionViewUpdateItem]) {
        super.prepareForCollectionViewUpdates(updateItems)
        
        var insertIndexPathSet = Set<NSIndexPath>()
        
        for updateItem in updateItems {
            switch updateItem.updateAction {
            case .Insert:
                let indexPath = updateItem.indexPathAfterUpdate
                insertIndexPathSet.insert(indexPath!)
            default:
                break
            }
        }
        
        self.insertIndexPathSet = insertIndexPathSet
    }
    
    
    override func initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes? {
        
        if let attributes = super.initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath) {
            
            if insertIndexPathSet.contains(itemIndexPath) {
                
                attributes.frame.origin.y += 30 + 30 * CGFloat(itemIndexPath.row)
                attributes.alpha = 0.0
                
                insertIndexPathSet.remove(itemIndexPath)
            }
            
            return attributes
        }
        
        return nil
    }

}
