//
//  PlacesCollectionViewCell.swift
//  CustomCollectionViews
//
//  Created by Jaweria Khan on 26/08/2022.
//

import UIKit
import Foundation




class PlacesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var placesImageView: UIImageView!
    @IBOutlet weak var placeLabel: UILabel!
    
    
   
    
    func setUp(with place: Place) {
        placesImageView.image = place.image
        placeLabel.text = place.title
    }
}
