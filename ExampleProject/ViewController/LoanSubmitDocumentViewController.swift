//
//  LoanSubmitDocumentViewController.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 24..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import UIKit
import IGListKit

/// 대출서류 제출 화면.
final class LoanSubmitDocumentViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    
    lazy var items: [Any] =  {
        let model = InfomationHeaderSectionModel()
        model.set(title: "2017.11.12까지\n서류를 모두 제출해주세요.")

        return [model, 1, 2, 3]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }

    
    private func setup() {
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }
}

// MARK: ListAdapterDataSource
extension LoanSubmitDocumentViewController: ListAdapterDataSource {
    
    // model 객체
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return items.flatMap { $0 as? ListDiffable }
    }
    
    // 오브젝트에 맞는 섹션 컨트롤러를 꺼내준다.
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        //각 세션에 맞는 섹션 컨트롤러가 생성이 될꺼다.

        if object is InfomationHeaderSectionModel {
            return InfomationHeaderSectionController()
        } else if (object as! Int) == 1 || (object as! Int) == 2 {
            return DocumnetSectionController()
        } else {
            return DocumentFooterSectionController()
        }
    }
    
    // 과연 너는 무엇을 하는 놈이냐?
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}


