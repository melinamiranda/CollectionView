//
//  CollectionViewCell2.swift
//  CollectionView
//
//  Created by Melina Miranda on 31/01/2020.
//  Copyright © 2020 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCell2: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        imageView.image = nil
    }
    
    func showImages(images: itemH){
        activityIndicator.startAnimating()
        DispatchQueue.global().async {
            let url = URL(string: images.imageURL)
            let task = URLSession.shared.dataTask(with: url!)
            if let data = try? Data(contentsOf: url!) {
                let image = UIImage(data: data)
                DispatchQueue.main.async {
                    self.imageView.image = image
                    self.activityIndicator.stopAnimating()
                }
            }
            task.resume()
        }
    }
}


