//
//  DocumnetSectionController.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 24..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import Foundation
import IGListKit

//여기 섹션에는 타이틀이랑 도튜먼트 인풋 이 두가지가 생성될 예정이다.
//확실히 섹션을 나눠서 사용하는데 있어서는 재미있는 장점들이 많은거 같다.
final class DocumnetSectionController: ListSectionController {
    
    /*
     딱히 셀사이즈 높이를 지능적으로 관리해줄거 같지는 않다.(그냥 UICollectionViewFlowLayout의 estimatedItemSize를 사용할뿐)
     대신 직접 관라하게 만들면 될뿐.
     */
    override func sizeForItem(at index: Int) -> CGSize {
        guard let context = collectionContext else { return .zero }
        let width: CGFloat = context.containerSize.width - (inset.left + inset.right)
        let height: CGFloat = 80
        return CGSize(width: width, height: height)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(withNib: LoanRequiredDocumentCell.self, for: self, at: index) else {
            fatalError()
        }
        
        return cell
    }
    
    override func didUpdate(to object: Any) {
        print(object)
        //넌 뭐하는 놈이니??
        //        self.object = String(describing: object)
    }
    
}

