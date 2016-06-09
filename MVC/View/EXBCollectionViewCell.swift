//
//  EXBCollectionViewCell.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import UIKit
import OLImageView

let NSBundleURL = NSURL(fileURLWithPath: NSBundle.mainBundle().bundlePath)  

class EXBCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var coverImageView: OLImageView!
    
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
