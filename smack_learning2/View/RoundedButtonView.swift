//
//  RoundedButtonView.swift
//  smack_learning2
//
//  Created by Chuck on 2018/5/11.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButtonView: UIButton {
    
    @IBInspectable var radius: CGFloat = 3.0 {
        didSet {
            roundedButton()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        roundedButton()
    }
   
    override func awakeFromNib() {
        super.awakeFromNib()
        roundedButton()
    }
    
    func roundedButton() {
        layer.cornerRadius = radius
    }

}
