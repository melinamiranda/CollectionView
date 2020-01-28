//
//  UICollectionView.swift
//  CollectionView
//
//  Created by Melina Miranda on 28/01/2020.
//  Copyright © 2020 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell, UICollectionViewDelegate {
    @IBOutlet weak var labelText: UILabel!
    func showItems(items: item){
        labelText.text = items.label
    }
}
