//
//  InfomationHeaderSectionController.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 26..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import Foundation
import IGListKit
//클래스로 할꺼면 뷰모델로 하고 싶은데.
class InfomationHeaderSectionModel: NSObject, ListDiffable {
    private(set) var attributedTitle: NSAttributedString?
    private(set) var attributedDescription: NSAttributedString?

    override init() {
        super.init()
    }

     func set(title: String) {
        self.attributedTitle = NSAttributedString(string: title)
    }
     func set(description: String) {
        self.attributedDescription = NSAttributedString(string: description)
    }
     func setA(title: NSAttributedString) {
        self.attributedTitle = title
    }
     func setA(description: NSAttributedString) {
        self.attributedDescription = description
    }

    func diffIdentifier() -> NSObjectProtocol {
        return self as NSObjectProtocol
        // (attributedTitle?.string ?? "") as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        //변경 사항들이 있는지 체크하기 위함인듯하다.
        guard self !== object else { return true }
        guard let object = object as? InfomationHeaderSectionModel else { return false }
        if self.attributedTitle == nil { return false }
        return self.attributedTitle?.string == object.attributedTitle?.string
    }
}

//여기 섹션에는 타이틀이랑 도튜먼트 인풋 이 두가지가 생성될 예정이다.
//확실히 섹션을 나눠서 사용하는데 있어서는 재미있는 장점들이 많은거 같다.
final class InfomationHeaderSectionController: ListSectionController {

    private var model: InfomationHeaderSectionModel?

    override init() {
        super.init()
    }

    override func numberOfItems() -> Int {
        return model == nil ? 0 : 1
    }

    override func sizeForItem(at index: Int) -> CGSize {
        guard let context = collectionContext else { return .zero }
        return CGSize(width: context.containerSize.width, height: 106)
    }

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(withNib: InfomationHeaderCell.self, for: self, at: index) else {
            fatalError()
        }
        cell.set(title: model?.attributedTitle)
        cell.set(description: model?.attributedDescription)
        return cell
    }

    // 모델 데이터가 여기로 들어온다!
    override func didUpdate(to object: Any) {
        self.model = object as? InfomationHeaderSectionModel
    }

}

