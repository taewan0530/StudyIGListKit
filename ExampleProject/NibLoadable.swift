//
//  NibLoadable.swift
//  CustomModal
//
//  Created by wani.kim on 2017. 8. 21..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import UIKit

public protocol NibLoadable: NSObjectProtocol {
    var nibContainerView: UIView { get }
    func loadNib() -> UIView
    func nibName() -> String
}


extension NibLoadable where Self: UIView {
    public func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName(), bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
    
    public func setupNib() {
        let view = self.loadNib()
        self.nibContainerView.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        let bindings = ["view": view]
        self.nibContainerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options:[], metrics:nil, views: bindings))
        self.nibContainerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options:[], metrics:nil, views: bindings))
    }
    
    public func nibName() -> String {
        return type(of: self).description().components(separatedBy: ".").last!
    }
}

extension NibLoadable where Self: UIView {
    public var nibContainerView: UIView {
        return self
    }
}


public protocol NibInstanceable: NSObjectProtocol {
   static var nibName: String { get }
}

public extension NibInstanceable where Self: UIView {
    public static var instance: Self {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil)
            .flatMap { $0 as? Self }.first!
    }
}
