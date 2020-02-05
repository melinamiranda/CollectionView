//
//  UICollectionView.swift
//  CollectionView
//
//  Created by Melina Miranda on 28/01/2020.
//  Copyright © 2020 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit
import SafariServices

protocol CollectionViewCellDelegate {
    func passURL(url:URL)
}

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelName:UILabel!
    @IBOutlet weak var imageView:UIImageView!
    @IBOutlet weak var button:UIButton!
    var delegate:CollectionViewCellDelegate?
    
    @IBAction func openURL(_ sender: UIButton) {
    }
    
    func showItems(items: item) {
        let url = URL(string: items.url)
        delegate?.passURL(url: url!)
        labelName.text = items.label
        imageView.image = items.image
        
    }
}
