//
//  LayoutEstimatable.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 25..
//  Copyright © 2017년 wani.kim. All rights reserved.
//


import UIKit
/*
class KBCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
}

protocol LayoutEstimatable: class {
}

extension LayoutEstimatable where Self: UICollectionViewCell {
    func estimateSize() -> CGSize {

        return contentView.systemLayoutSizeFitting(UILayoutFittingExpandedSize, withHorizontalFittingPriority: UILayoutPriorityRequired, verticalFittingPriority: UILayoutPriorityDefaultLow)
        if layoutAttributes.isHidden {
            return layoutAttributes
        }

        if let layoutSize = Self.estimatedLayout[layoutAttributes.indexPath] {
            layoutAttributes.size = layoutSize
        } else {
            layoutAttributes.size = contentView.systemLayoutSizeFitting(
                layoutAttributes.size,
                withHorizontalFittingPriority: UILayoutPriorityRequired,
                verticalFittingPriority: UILayoutPriorityDefaultLow)
            Self.estimatedLayout[layoutAttributes.indexPath] = layoutAttributes.size
        }
        return layoutAttributes
    }


    static func estimatedSizeReset(indexPath: IndexPath? = nil) {
        if let key = indexPath {
            estimatedLayout[key] = nil
        } else {
            estimatedLayout = [:]
        }
    }

    func estimateLayoutAttributes(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        if layoutAttributes.isHidden {
            return layoutAttributes
        }

        if let layoutSize = Self.estimatedLayout[layoutAttributes.indexPath] {
            layoutAttributes.size = layoutSize
        } else {
            layoutAttributes.size = contentView.systemLayoutSizeFitting(
                layoutAttributes.size,
                withHorizontalFittingPriority: UILayoutPriorityRequired,
                verticalFittingPriority: UILayoutPriorityDefaultLow)
            Self.estimatedLayout[layoutAttributes.indexPath] = layoutAttributes.size
        }
        return layoutAttributes
    }

}

*/
