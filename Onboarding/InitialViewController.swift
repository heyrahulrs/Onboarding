//
//  InitialViewController.swift
//  Onboarding
//
//  Created by Rahul Sharma on 8/1/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let viewController = storyboard?.instantiateViewController(withIdentifier: "OnboardingViewController") as! OnboardingViewController
        present(viewController, animated: true)
        
    }

}
