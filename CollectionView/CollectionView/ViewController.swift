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

struct itemH{
    var imageURL: String
}

class ViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionViewV: UICollectionView!
    @IBOutlet weak var collectionViewH: UICollectionView!
    var itemsArray = [item]()
    var itemsImageArray = [itemH]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewV.dataSource = self
        collectionViewH.dataSource = self
        itemsArray = [
            item(label: "Facebook", image: UIImage(named: "FacebookLogo"), url: "https://www.facebook.com"),
            item(label: "Instagram", image: UIImage(named: "InstagramLogo"),url: "https://www.instagram.com"),
            item(label: "Linkedin", image: UIImage(named: "LinkedinLogo"), url: "https://www.linkedin.com"),
            item(label: "Twitter", image: UIImage(named: "TwitterLogo"), url: "https://www.twitter.com"),
        ]
        itemsImageArray = [
            itemH(imageURL: "https://upload.wikimedia.org/wikipedia/commons/8/87/Palace_of_Westminster_from_the_dome_on_Methodist_Central_Hall.jpg"),
            itemH(imageURL: "https://upload.wikimedia.org/wikipedia/commons/8/87/Palace_of_Westminster_from_the_dome_on_Methodist_Central_Hall.jpg"),
            itemH(imageURL: "https://upload.wikimedia.org/wikipedia/commons/8/87/Palace_of_Westminster_from_the_dome_on_Methodist_Central_Hall.jpg"),
            itemH(imageURL: "https://upload.wikimedia.org/wikipedia/commons/8/87/Palace_of_Westminster_from_the_dome_on_Methodist_Central_Hall.jpg"),
            itemH(imageURL: "https://upload.wikimedia.org/wikipedia/commons/8/87/Palace_of_Westminster_from_the_dome_on_Methodist_Central_Hall.jpg"),

        ]
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewV {
        return itemsArray.count
        }
        else {
            return itemsImageArray.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionViewV {
        let cell =  collectionViewV.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.urlString = itemsArray[indexPath.item].url
        cell.showItems(items: itemsArray[indexPath.item])
        return cell
        }
        else {
            let cell = collectionViewH.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellH", for: indexPath) as! CollectionViewCellH
            cell.showImages(images: itemsImageArray[indexPath.item])
            return cell
        }
    }
}
