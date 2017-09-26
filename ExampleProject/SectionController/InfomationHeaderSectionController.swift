//
//  InfomationHeaderSectionController.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 26..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import Foundation
import IGListKit


//여기 섹션에는 타이틀이랑 도튜먼트 인풋 이 두가지가 생성될 예정이다.
//확실히 섹션을 나눠서 사용하는데 있어서는 재미있는 장점들이 많은거 같다.
final class InfomationHeaderSectionController: ListSectionController {

    override init() {
        super.init()
    }

    override func numberOfItems() -> Int {
        return 1
    }

    override func sizeForItem(at index: Int) -> CGSize {
        guard let context = collectionContext else { return .zero }
        return CGSize(width: context.containerSize.width, height: 106)
    }

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(withNib: InfomationHeaderCell.self, for: self, at: index) else {
            fatalError()
        }
        return cell
    }

    fileprivate func didScroll() {

    }
}

