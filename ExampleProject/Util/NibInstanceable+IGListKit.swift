//
//  NibInstanceable+IGListKit.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 25..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import Foundation
import IGListKit


extension ListCollectionContext {
    func dequeueReusableCell(withNib instanceable: NibInstanceable.Type, for sectionController: ListSectionController, at index: Int) -> UICollectionViewCell {
        return dequeueReusableCell(withNibName: instanceable.nibName, bundle: instanceable.bundle, for: sectionController, at: index)
    }
}
