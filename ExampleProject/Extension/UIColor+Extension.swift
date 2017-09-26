//
//  UIColor+Extension.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 25..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import UIKit


extension UIColor {
    static let kbOneColor221: UIColor = .init(r: 221, g: 221, b: 211)
    static let kbOneColor179: UIColor = .init(r: 179, g: 179, b: 179)
    static let kbOneColor247: UIColor = .init(r: 247, g: 247, b: 247)
}


extension UIColor {
    convenience init(r: UInt8, g: UInt8, b: UInt8, a: UInt8 = 255) {
        self.init(red: CGFloat(r)/255.0, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: CGFloat(a)/255)
    }
}
