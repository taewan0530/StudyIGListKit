//
//  DocumentFooterSectionController.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 26..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import Foundation
import IGListKit


class OffScreenHelper: NSObject {
    private var cells: [String: NibInstanceable] = [:]
    func cell<T: NibInstanceable & UICollectionViewCell>(type: T.Type) -> T? {
        guard let cell = cells[T.nibName] else {
            return T.instance
        }
        return cell as? T
    }
}

protocol OffscreenEstimatable {
    static var helper: OffScreenHelper { get }
    static var estimatedSize: [NSObject: CGSize] { get set }
}

extension OffscreenEstimatable {
    func sizeForOffscreen<T: NibInstanceable & UICollectionViewCell>(by instnceable: T.Type) -> T? {
        return Self.helper.cell(type: instnceable)
    }
}

final class DocumentFooterSectionController: ListSectionController, OffscreenEstimatable {
    static var helper: OffScreenHelper = OffScreenHelper()
    static var estimatedSize: [NSObject: CGSize] = [:]

    override init() {
        super.init()
        self.inset = UIEdgeInsetsMake(16, 24, 50, 24)
        self.minimumLineSpacing = 30
    }

    override func numberOfItems() -> Int {
        return 2
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        guard let context = collectionContext else { return .zero }

        let width: CGFloat = context.containerSize.width - (inset.left + inset.right)

        if let cell = self.sizeForOffscreen(by: DescriptionCell.self) {
            cell.label.text = "※ 보증금이 수도권은 4억 이하, 지방권은 2억 이하일 경우만 대출이 가능합니다.\n※ 임대차 계약서에 있는 보증금을 적어주세요.\n※ 보증금의 최대 80%까지 대출이 가능합니다."

            let size = cell.contentView.systemLayoutSizeFitting(CGSize(width: width, height: 20),
                                                           withHorizontalFittingPriority: UILayoutPriorityRequired,
                                                           verticalFittingPriority: UILayoutPriorityDefaultLow)
            return size
        }

        //셀 높이를 전부다 내놔 라고 하는거지.
        //모델이랑 비교를 한다.
        //여기는 계산해주는게 편하다.
        if index == 0 {
            return CGSize(width: width, height: 20)
        }
        return CGSize(width: width, height: 20)
    }

    // 모델 데이터가 여기로 들어온다!
    override func didUpdate(to object: Any) {
        print("didUpdate:\(object)")
        //object 여기안에 배열이든 타입이든 있어서 인덱스가 몇개일지 정의하고 값넣을 방법 고려한다.
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(withNib: DescriptionCell.self, for: self, at: index) else {
            fatalError()
        }
        cell.label.text = "※ 보증금이 수도권은 4억 이하, 지방권은 2억 이하일 경우만 대출이 가능합니다.\n※ 임대차 계약서에 있는 보증금을 적어주세요.\n※ 보증금의 최대 80%까지 대출이 가능합니다."
        return cell
    }
}


