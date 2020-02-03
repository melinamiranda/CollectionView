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
        let vc = UIViewController()
        let url = URL(string: urlString)
        let safariVC = SFSafariViewController(url: url!)
        safariVC.delegate = self
        safariVC.dismissButtonStyle = .close
        safariVC.modalPresentationStyle = .fullScreen
        vc.present(safariVC, animated: true, completion: nil)
    }
    
    func showItems(items: item) {
        labelName.text = items.label
        imageView.image = items.image
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        let vc = UIViewController()
        vc.dismiss(animated: true, completion: nil)
    }
}
