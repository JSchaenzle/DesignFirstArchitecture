//
//  DashboardView.swift
//  DesignFirstMobile
//
//  Created by Jordan Schaenzle on 5/8/16.
//  Copyright © 2016 Jordan Schaenzle. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class DashboardView : BaseView {

    required init?(coder aDecoder: NSCoder) { fatalError("Coding not supported") }

    override init() {
        super.init()

        self.backgroundColor = DashboardStyle.backgroundColor

let emailAddress = UITextField()
emailAddress.text = "Enter email"
emailAddress.textColor = DashboardStyle.emailAddressTextField.textColor
emailAddress.backgroundColor = DashboardStyle.emailAddressTextField.backgroundColor
self.addSubview(emailAddress)

let submitButton = UIButton(type: .RoundedRect)
submitButton.setTitle("Submit", forState: .Normal)
submitButton.backgroundColor = DashboardStyle.submitButton.backgroundColor
submitButton.setTitleColor(DashboardStyle.submitButton.textColor, forState: .Normal)
self.addSubview(submitButton)

        self.constrainViews = {

            emailAddress.snp_makeConstraints {
                (make: ConstraintMaker) -> Void in
                make.top.equalTo(self.snp_top).offset(40)
                make.left.equalTo(self.snp_left)
                make.right.equalTo(self.snp_right)
            }

            submitButton.snp_makeConstraints {
                (make: ConstraintMaker) -> Void in
                make.top.equalTo(emailAddress.snp_bottom).offset(20)
                make.left.equalTo(self.snp_left)
                make.right.equalTo(self.snp_right)
            }
        }
    }

}
