//
//  CollectionViewCellImage.swift
//  CollectionView
//
//  Created by Melina Miranda on 30/01/2020.
//  Copyright © 2020 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCellImage: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    func showImage(images: images){
        imageView.image = images.logo
    }
    
}
