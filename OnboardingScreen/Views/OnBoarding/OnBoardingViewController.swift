//
//  OnBoardingViewController.swift
//  OnboardingScreen
//
//  Created by Jaweria Khan on 30/08/2022.
//

import UIKit

class OnBoardingViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    
    var slides: [OnboardingSlide] = []
    
    //Setting the button title for current page
    var  currentPage = 0 {
        didSet {
            //scrolling page controll with button  (...)
            pageControl.currentPage = currentPage

            if currentPage == slides.count - 1 {
                nextButton.setTitle("Get Started", for: .normal)
            } else {
                nextButton.setTitle("Next", for: .normal)
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        slides = [
            OnboardingSlide(title: "Make The World Green", description: "Lets control climate change together to save the universe", image: #imageLiteral(resourceName: "PlantVectorF")),
            OnboardingSlide(title: "Plant It", description: "Together We Can Bring The Change In A Healthier Way", image: #imageLiteral(resourceName: "VectorPlant3")),
            OnboardingSlide(title: "Instant Delivery", description: "We Make Sure To Deliver The Best Product At Your DoorStep instantly", image: #imageLiteral(resourceName: "PlantVectorE"))
            
            
        ]
        
        
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        if currentPage == slides.count - 1 {
            print("Get Started Pressed")
        } else {
            
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredVertically, animated: true)
        }
    }
    
    
}

extension OnBoardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnBoardingCollectionViewCell", for: indexPath) as! OnBoardingCollectionViewCell
        cell.setUp(slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
    }
    
    //Scrolling indicator & swt the width of currentPage
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        pageControl.currentPage = currentPage
    }
    
    
}
