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
    
    lazy var items = Array(0...20)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    private func setup() {
        adapter.collectionView = collectionView
        adapter.dataSource = self
        adapter.scrollViewDelegate = self
    }
}

// MARK: ListAdapterDataSource
extension LoanSubmitDocumentViewController: ListAdapterDataSource {
    
    // model 객체
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        //ListDiffable 는 nsObject의 extenion 에 확장 한듯 하다.
        return items as [ListDiffable]
    }
    
    // 오브젝트에 맞는 섹션 컨트롤러를 꺼내준다.
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return ListSectionController()
    }
    
    // 과연 너는 무엇을 하는 놈이냐?
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}

extension LoanSubmitDocumentViewController: UIScrollViewDelegate {
    
}