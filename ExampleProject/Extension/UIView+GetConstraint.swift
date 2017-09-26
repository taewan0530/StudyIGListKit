//
//  UIView+GetConstraint.swift
//  EasyKit
//
//  IBOulet로 Constraint를 참조 시키는게 개취가 아니라 만든 extension
//  
//
//  Created by kimtaewan on 2016. 4. 27..
//  Copyright © 2016년 taewan. All rights reserved.
//

import UIKit
/*
protocol LayoutConstraintFindable {
    func findConstraints(attribute attr: NSLayoutAttribute) -> [NSLayoutConstraint]
    func findConstraints(item view: AnyObject, attribute attr1: NSLayoutAttribute) -> [NSLayoutConstraint]
}

extension LayoutConstraintFindable where Self: UITableViewCell {

}

extension LayoutConstraintFindable where Self: UICollectionReusableView {
    private var containerView: UIView {
        return (self as? UICollectionViewCell)?.contentView ?? self
    }
     func findConstraints(attribute attr: NSLayoutAttribute) -> [NSLayoutConstraint] {
        return findConstraints(item: containerView, attribute: attr)
    }

     func findConstraints(item view: AnyObject, attribute attr1: NSLayoutAttribute) -> [NSLayoutConstraint] {
        var results: [NSLayoutConstraint] = []
        ParkBenchTimer.start(by: "findConstraints")

        results += Self.targetFromConstraints(target: containerView, item: view, attribute: attr1)
        ParkBenchTimer.stop(by: "findConstraints")
        return results
    }
}

extension LayoutConstraintFindable {
    fileprivate static func targetFromConstraints(target: AnyObject, item view: AnyObject?, attribute attr: NSLayoutAttribute) -> [NSLayoutConstraint] {
        var results: [NSLayoutConstraint] = []
        
        for constraint in target.constraints {
            if "NSContentSizeLayoutConstraint" == objectName(from: constraint) {
                continue
            }

            let targetAttribute: NSLayoutAttribute

            if "_UILayoutGuide" == objectName(from: constraint.firstItem) {
                targetAttribute = constraint.secondAttribute
            } else {
                targetAttribute = constraint.firstAttribute
            }

            let firstItemEqual: Bool
            let secondItemEqual: Bool

            if view == nil {
                firstItemEqual =  constraint.secondItem === target
                secondItemEqual = constraint.firstItem === target
            } else {
                firstItemEqual = constraint.firstItem === view
                secondItemEqual = constraint.secondItem === view
            }

            guard targetAttribute == attr && (firstItemEqual || secondItemEqual) else {
                continue
            }

            results.append(constraint)
        }
        return results
    }


    private static func objectName(from obj: AnyObject) -> String {
        return type(of: obj).description().components(separatedBy:"__").last!
    }
}

*/
