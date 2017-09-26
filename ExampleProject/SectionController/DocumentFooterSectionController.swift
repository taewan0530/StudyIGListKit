//
//  DocumentFooterSectionController.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 26..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import Foundation
import IGListKit

final class DocumentFooterSectionController: ListSectionController {
    
    override init() {
        super.init()
        self.inset = UIEdgeInsetsMake(16, 24, 50, 24)
        self.minimumLineSpacing = 30
    }
    
    //이건 고정일예정.
    override func numberOfItems() -> Int {
        return 2
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        guard let context = collectionContext else { return .zero }
        let width: CGFloat = context.containerSize.width - (inset.left + inset.right)
        //셀 높이를 전부다 내놔 라고 하는거지.
        //모델이랑 비교를 한다.
        //여기는 계산해주는게 편하다.
        if index == 0 {
            return CGSize(width: width, height: 95)
        }
        return CGSize(width: width, height: 42)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(withNib: DescriptionCell.self, for: self, at: index) else {
            fatalError()
        }
        cell.backgroundColor = .red
        return cell
    }
    
}


