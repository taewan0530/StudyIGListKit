//
//  DescriptionViewCell.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 26..
//  Copyright © 2017년 wani.kim. All rights reserved.
//

import UIKit

final class DescriptionCell: UICollectionViewCell, NibInstanceable {

    @IBOutlet private(set) weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
