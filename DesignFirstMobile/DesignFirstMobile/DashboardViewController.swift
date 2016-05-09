//
//  DashboardViewController.swift
//  DesignFirstMobile
//
//  Created by Jordan Schaenzle on 5/8/16.
//  Copyright © 2016 Jordan Schaenzle. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class DashboardViewController : UIViewController {
    private let dashboardView: UIView
    required init?(coder aDecoder: NSCoder) { fatalError("Coding not supported") }

    init() {
        dashboardView = DashboardView()
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(dashboardView)
        dashboardView.snp_makeConstraints {
            (make: ConstraintMaker) -> Void in
            make.edges.equalTo(self.view)
        }
    }
    
}