//
//  InfomationHeaderCell.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 22..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import UIKit

final class InfomationHeaderCell: UICollectionViewCell, NibInstanceable {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func set(title: NSAttributedString?) {
        self.titleLabel.attributedText = title
        self.titleLabel.isHidden = title == nil
    }

    func set(description: NSAttributedString?) {
        self.descriptionLabel.attributedText = description
        self.descriptionLabel.isHidden = description == nil
    }
}
