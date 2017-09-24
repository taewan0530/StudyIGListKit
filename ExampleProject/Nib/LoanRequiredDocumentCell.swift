//
//  LoanRequiredDocumentCell.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 22..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import UIKit

mutating struct RequiredDocumentModel {
    
    var title: String
    var infomation: String?
    var status: Status
    
    var callback: (() -> Void)?
    
    enum Status {
        case attachable
        case editable
        case completed
    }
}


final class LoanRequiredDocumentCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
