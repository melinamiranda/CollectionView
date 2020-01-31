//
//  CollectionViewCell2.swift
//  CollectionView
//
//  Created by Melina Miranda on 31/01/2020.
//  Copyright © 2020 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCellH: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    func showImages(images: itemH){
        activityIndicator.startAnimating()
        DispatchQueue.global().async {
            let url = URL(string: images.imageURL)
            let data = try? Data(contentsOf: url!)
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: data!)
                self.activityIndicator.stopAnimating()
            }
        }
    }
}
