//
//  CALayer+Extension.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 25..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import UIKit



extension CALayer {
    func border(color: UIColor, width: CGFloat, radius: CGFloat) {
        self.borderColor = UIColor.kbOneColor221.cgColor
        self.borderWidth = width/UIScreen.main.scale
        self.cornerRadius = radius
    }
}
