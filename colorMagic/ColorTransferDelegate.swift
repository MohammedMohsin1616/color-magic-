//
//  ColorTransferDelegate.swift
//  colorMagic
//
//  Created by Mohammed Mohsin Sayed on 10/26/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

protocol ColorTransferDelegate {
    
    func userDidChoose(color: UIColor, withName colorName: String, labelColor: UIColor)
}
