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
    func dequeueReusableCell<T: NibInstanceable>(withNib instanceable: T.Type, for sectionController: ListSectionController, at index: Int) -> T {
        return dequeueReusableCell(withNibName: instanceable.nibName, bundle: instanceable.bundle, for: sectionController, at: index) as! T
    }
}

extension ListCollectionContext {
    func dequeueReusableSupplementaryView<T: NibInstanceable>(ofKind elementKind: String, for sectionController: ListSectionController, nibInstanceable: T.Type, at index: Int) -> T {
        return dequeueReusableSupplementaryView(ofKind: elementKind, for: sectionController, nibName: nibInstanceable.nibName, bundle: nibInstanceable.bundle, at: index) as! T
    }
}
