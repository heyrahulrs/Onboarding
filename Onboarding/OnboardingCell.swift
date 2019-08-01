//
//  OnboardingCell.swift
//  Onboarding
//
//  Created by Rahul Sharma on 8/1/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import UIKit

class OnboardingCell: UICollectionViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var iconImageViewHeightConstraint: NSLayoutConstraint!
    
    /// Configures the cell with given onboarding item.
    func configure(with onboardingItem: OnboardingItem) {
        iconImageView.image = onboardingItem.image
        headingLabel.text = onboardingItem.heading
        descriptionLabel.text = onboardingItem.description
    }
    
    override func awakeFromNib() {
//        if UIDevice.deviceName == .iPhoneSE {
//            iconImageViewHeightConstraint.constant = 160
//        }
    }
    
    override func prepareForReuse() {
        iconImageView.image = nil
        headingLabel.text = ""
        descriptionLabel.text = ""
    }
    
}
