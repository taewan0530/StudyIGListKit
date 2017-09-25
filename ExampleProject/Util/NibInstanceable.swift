//
//  NibInstanceable.swift
//  CustomModal
//
//  Created by wani.kim on 2017. 8. 21..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import UIKit

public protocol NibInstanceable: NSObjectProtocol {
    static var nibName: String { get }
    static var bundle: Bundle { get }
    static var nib: UINib { get }
}

public extension NibInstanceable where Self: NSObject {
    public static var nibName: String {
        return Self.description().components(separatedBy: ".").last!
    }
    public static var bundle: Bundle {
        return Bundle(for: Self.self)
    }
    public static var nib: UINib {
        return UINib(nibName: self.nibName, bundle: self.bundle)
    }
}

public extension NibInstanceable where Self: UIView {
    public static var instance: Self {
        let view = self.nib.instantiate(withOwner: self, options: nil)
            .flatMap { $0 as? Self }.first
        guard let _instance = view else {
            fatalError("\(self.nibName)에서 \(self.nibName)뷰를 찾을 수 없습니다.")
        }
        return _instance
    }
}
