//
//  NavigationCoordinator.swift
//  DesignFirstMobile
//
//  Created by Jordan Schaenzle on 5/8/16.
//  Copyright © 2016 Jordan Schaenzle. All rights reserved.
//

import Foundation
import UIKit

class NavigationCoordinator {
    private let navigationController: UINavigationController
    
    init() {
        navigationController = UINavigationController()
    }
    
    func handleAppStarted() -> UIViewController {
        return navigateToDashboard()
    }
    
    func navigateToDashboard() -> UIViewController {
        let viewController = DashboardViewController()
        navigationController.setViewControllers([viewController], animated: false)
        return viewController
    }
}