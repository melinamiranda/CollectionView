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

class CollectionViewCell: UICollectionViewCell, SFSafariViewControllerDelegate {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    var urlString = ""
    
    @IBAction func openURL(_ sender: Any) {

        let url = URL(string: urlString)
        let safariVC = SFSafariViewController(url: url!)
        safariVC.delegate = self
        safariVC.modalPresentationStyle = .fullScreen
        safariVC.dismissButtonStyle = .close
        
       // UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
    func showItems(items: item) {
        labelName.text = items.label
        imageView.image = items.image
    }
}
