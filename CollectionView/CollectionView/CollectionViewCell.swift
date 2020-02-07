//
//  UICollectionView.swift
//  CollectionView
//
//  Created by Melina Miranda on 28/01/2020.
//  Copyright © 2020 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit


protocol CollectionViewCellDelegate {
    func passURL(url:URL)
    func openWebsite(cell: UICollectionViewCell)
}

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelName:UILabel!
    @IBOutlet weak var imageView:UIImageView!
    @IBOutlet weak var button:UIButton!
    var delegate:CollectionViewCellDelegate?
    
    @IBAction func openURL(_ sender: UIButton){
        delegate?.openWebsite(cell: self)
    }
    
    func showItems(items: item) {
        labelName.text = items.label
        imageView.image = items.image
    }
}
