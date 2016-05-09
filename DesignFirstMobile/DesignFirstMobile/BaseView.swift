//
// Created by Jordan Schaenzle on 5/8/16.
// Copyright (c) 2016 Jordan Schaenzle. All rights reserved.
//

import Foundation
import UIKit

class BaseView: UIView {
    private var didSetupConstraints = false
    var constrainViews: (() -> ())?

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    init() {
        super.init(frame: CGRectZero)
        translatesAutoresizingMaskIntoConstraints = false
    }

    override func updateConstraints() {
        if (!self.didSetupConstraints) {
            constrainViews!()
            didSetupConstraints = true
        }
        super.updateConstraints()
    }
}
