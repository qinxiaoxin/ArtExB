//
//  HomeTextFieldDelegate.swift
//  ArtExB
//
//  Created by Xin Qin on 5/16/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import Foundation
import UIKit

extension HomeViewController: UITextFieldDelegate {
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        //搜索操作
        
        return true
    }
}
