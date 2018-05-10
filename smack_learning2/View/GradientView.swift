//
//  GradientView.swift
//  smack_learning2
//
//  Created by Chuck on 2018/5/9.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        //使得这个属性可以在IB中进行更改
        didSet { //didSet的意思是，当在storyboard设置（/更改）这个属性时，马上执行以下语句
            self.setNeedsLayout() //update the layout of this view
        }
    }

    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout() // when the function is called, it calls the layoutSubviews()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
//        创建一个Gradient，需要颜色和起始点
        
        //set colors, need cgColors
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]//不止可以只加入两个颜色
        //set size, 注意其和一般的coordination system不一样
        //当从（0,0)->(1,1),会斜着渐变，而从（0.5,0）->(0.5,1)会垂直渐变，水平同理
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.frame
        self.layer.insertSublayer(gradientLayer, at: 0) //让其在sublayers的第一层
        
    }
}
