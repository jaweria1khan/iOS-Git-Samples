//
//  ViewController.swift
//  CustomCollectionViews
//
//  Created by Jaweria Khan on 25/08/2022.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
//        self.collectionView.layer.cornerRadius = 2.0
//        self.collectionView.layer.borderWidth = 1.0
//        self.collectionView.layer.borderColor = UIColor.clear.cgColor
//        self.collectionView.layer.masksToBounds = true
//
//        self.collectionView.layer.shadowColor = UIColor.black.cgColor
//        self.collectionView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
//        self.collectionView.layer.shadowRadius = 2.0
//        self.collectionView.layer.shadowOpacity = 0.5
//        self.collectionView.layer.masksToBounds = false
//        self.collectionView.layer.shadowPath = UIBezierPath(roundedRect: self.collectionView.bounds, cornerRadius: self.collectionView.layer.cornerRadius).cgPath
    }

}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //n number of places in array
        return places.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "PlacesCollectionViewCell", for: indexPath) as! PlacesCollectionViewCell
        cell.setUp(with: places[indexPath.row])
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
           cell?.layer.borderColor = UIColor.blue.cgColor
           cell?.layer.borderWidth = 1
           cell?.isSelected = true
        print(places[indexPath.row].title)
    }
}
