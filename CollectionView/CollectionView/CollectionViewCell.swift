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
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    var imagesArray = [UIImage]()
    func showItems(items: item){
        labelName.text = items.label
        imageView.image = items.image
    }
}
