//
//  ViewController.swift
//  CollectionView
//
//  Created by Melina Miranda on 28/01/2020.
//  Copyright © 2020 Melina Miranda. All rights reserved.
//

import UIKit

struct items {
    var item: String
}

class ViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var itemsArray = [items]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        
        itemsArray = [
            items(item: "First item inside the collection"),
            items(item: "Second item inside the collection view"),
            items(item: "Third item inside the collection view"),
            items(item: "Four item inside the collection view"),
            items(item: "Fifth item inside the collection view"),
            items(item: "Sixth item inside the collection view"),
            items(item: "Seventh item inside the collection view"),
            items(item: "Eighth item inside the collection view"),
            items(item: "Ninth item inside the collection view"),
        ]
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.showItems(itemsArray: itemsArray[indexPath.item])
        return cell
    }
    
   /* func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
            case UICollectionView.elementKindSectionHeader:
                let reuseViewHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
                return reuseViewHeader
            case UICollectionView.elementKindSectionFooter:
                let reuseViewFooter =  collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "footer", for: indexPath)
                return reuseViewFooter
            default:
                print("error")
        }
    }*/
}
