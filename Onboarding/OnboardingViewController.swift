//
//  OnboardingViewController.swift
//  Onboarding
//
//  Created by Rahul Sharma on 8/1/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var onboardingItems: [OnboardingItem] = []
    
    var currentIndex: Int = 0 {
        didSet {
            pageControl.currentPage = currentIndex
            
            if currentIndex == onboardingItems.count - 1 {
                nextButton.setTitle("Start", for: .normal)
                skipButton.setTitle(" ", for: .normal)
            }else{
                nextButton.setTitle("Next", for: .normal)
                skipButton.setTitle("Skip", for: .normal)
            }
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        onboardingItems = OnboardingItem.onboardingItems
        
        pageControl.numberOfPages = onboardingItems.count

        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    @IBAction func didTapNextButon() {
        currentIndex += 1
        
        if currentIndex >= onboardingItems.count {
            dismiss(animated: true)
            return
        }
        
        let indexPath = IndexPath(row: currentIndex, section: 0)
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    @IBAction func didTapSkipButon() {
        dismiss(animated: true)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let index = Int(targetContentOffset.pointee.x) / Int(scrollView.frame.width)
        currentIndex = index
    }

}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return onboardingItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCell", for: indexPath) as! OnboardingCell
        let onboardingItem = onboardingItems[indexPath.row]
        cell.configure(with: onboardingItem)
        return cell
    }
    
}

extension OnboardingViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
    
}
