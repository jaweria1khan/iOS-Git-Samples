//
//  OnBoardingCollectionViewCell.swift
//  OnboardingScreen
//
//  Created by Jaweria Khan on 30/08/2022.
//

import UIKit
import Foundation

class OnBoardingCollectionViewCell: UICollectionViewCell {
    
    //setting the description label as string
    static let identifier = String(describing: OnboardingSlide.self)
    
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLabel: UILabel!
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    
    
    func setUp(_ slide: OnboardingSlide){
        
        slideImageView.image = slide.image
        slideTitleLabel.text = slide.title
        slideDescriptionLabel.text = slide.description
    }
    
    
}
