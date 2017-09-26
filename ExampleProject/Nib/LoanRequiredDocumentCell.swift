//
//  LoanRequiredDocumentCell.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 22..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import UIKit

final class LoanRequiredDocumentCell: UICollectionViewCell, NibInstanceable {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var infomationLabel: UILabel!
    @IBOutlet private weak var statusButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }

    private func setup() {
        self.layer.border(color: .kbOneColor221, width: 1, radius: 2)
        self.statusButton.layer.border(color: .kbOneColor179, width: 1, radius: 2)
    }
}


