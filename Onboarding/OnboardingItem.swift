//
//  OnboardingItem.swift
//  Onboarding
//
//  Created by Rahul Sharma on 8/1/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import UIKit

struct OnboardingItem {
    
    var heading: String
    var description: String
    
    var image: UIImage {
        return #imageLiteral(resourceName: "Home Illustration")
    }
    
    /// Returns the count of Onboarding Items for the app.
    static var count: Int {
        return onboardingItems.count
    }
    
    /// Returns the Onboarding Items for the app.
    static var onboardingItems: [OnboardingItem] {
        let item1 = OnboardingItem(heading: "First Title",
                                   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget.")
        let item2 = OnboardingItem(heading: "Second Title",
                                   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget.")
        let item3 = OnboardingItem(heading: "Third Title",
                                   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget.")
        let item4 = OnboardingItem(heading: "Fourth Title",
                                   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget.")
        return [item1, item2, item3, item4]
    }
    
}
    
