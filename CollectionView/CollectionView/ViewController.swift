//
//  ViewController.swift
//  CollectionView
//
//  Created by Melina Miranda on 28/01/2020.
//  Copyright © 2020 Melina Miranda. All rights reserved.
//

import UIKit

struct item {
    var label: String
    var image: UIImage!
    var url: String
}

class ViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var itemsArray = [item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        itemsArray = [
            item(label: "Facebook", image: UIImage(named: "FacebookLogo"), url: "https://www.facebook.com"),
            item(label: "Instagram", image: UIImage(named: "InstagramLogo"),url: "https://www.instagram.com"),
            item(label: "Linkedin", image: UIImage(named: "LinkedinLogo"), url: "https://www.linkedin.com"),
            item(label: "Twitter", image: UIImage(named: "TwitterLogo"), url: "https://www.twitter.com"),
        ]
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.urlString = itemsArray[indexPath.item].url
        cell.showItems(items: itemsArray[indexPath.item])
        return cell
   
    }
}
