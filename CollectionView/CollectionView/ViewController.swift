//
//  ViewController.swift
//  CollectionView
//
//  Created by Melina Miranda on 28/01/2020.
//  Copyright © 2020 Melina Miranda. All rights reserved.
//

import UIKit
import SafariServices

struct item {
    var label:String
    var image:UIImage!
    var url:String
}

struct itemH {
    var imageURL:String
}

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, SFSafariViewControllerDelegate, CollectionViewCellDelegate {
   
    @IBOutlet weak var collectionView:UICollectionView!
    weak var prefetchDataSource: UICollectionViewDataSourcePrefetching?

    
    var itemsArray = [item]()
    var itemsImageArray = [itemH]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        itemsArray = [
            item(label: "Facebook", image: UIImage(named: "FacebookLogo"), url: "https://www.facebook.com"),
            item(label: "Instagram", image: UIImage(named: "InstagramLogo"),url: "https://www.instagram.com"),
            item(label: "Linkedin", image: UIImage(named: "LinkedinLogo"), url: "https://www.linkedin.com"),
            item(label: "Twitter", image: UIImage(named: "TwitterLogo"), url: "https://www.twitter.com"),

        ]
        itemsImageArray = [
            itemH(imageURL:"https://upload.wikimedia.org/wikipedia/commons/8/87/Palace_of_Westminster_from_the_dome_on_Methodist_Central_Hall.jpg"),
            itemH(imageURL:"https://upload.wikimedia.org/wikipedia/commons/8/8f/Nationaltheatret_Oslo_Front_at_Night.jpg"),
            itemH(imageURL: "https://upload.wikimedia.org/wikipedia/commons/4/48/Moore_Street_market%2C_Dublin.jpg"),
            itemH(imageURL: "https://upload.wikimedia.org/wikipedia/commons/2/28/The_Shore%2C_Leith.JPG"),
            itemH(imageURL: "https://upload.wikimedia.org/wikipedia/commons/5/55/BrasiliaBanNacional.jpg"),
            itemH(imageURL: "https://upload.wikimedia.org/wikipedia/commons/9/9d/Rangitoto_Island_North_Head.jpg"),
        ]
    }
    
    func passURL(url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.modalPresentationStyle = .overFullScreen
        safariVC.dismissButtonStyle = .cancel
        safariVC.delegate = self
        present(safariVC,animated: true,completion: nil)
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        dismiss(animated: true, completion: nil)
    }
    
    func openWebsite(cell: UICollectionViewCell) {
        let tappedIndexPath = collectionView.indexPath(for: cell)
        let cell = collectionView.cellForItem(at: tappedIndexPath!) as! CollectionViewCell
        cell.delegate?.passURL(url: URL(string: itemsArray[tappedIndexPath!.item].url)!)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
       
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return itemsArray.count
        }
        else {
            return itemsImageArray.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
            cell.showItems(items: itemsArray[indexPath.item])
            cell.delegate = self
            return cell
            
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell2", for: indexPath) as! CollectionViewCell2
            cell.showImages(images: itemsImageArray[indexPath.item])
            return cell
        }
    }
}
