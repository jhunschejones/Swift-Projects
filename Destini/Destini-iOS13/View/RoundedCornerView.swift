//
//  RoundedCornerView.swift
//  Destini-iOS13
//
//  Created by Joshua on 7/24/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedCornerView: UIView {

    // if cornerRadius variable is set/changed, change the corner radius of the UIView
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
}
