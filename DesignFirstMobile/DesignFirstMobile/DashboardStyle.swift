//
// Created by Jordan Schaenzle on 5/8/16.
// Copyright (c) 2016 Jordan Schaenzle. All rights reserved.
//

import Foundation
import UIKit

class DashboardStyle {

    static let backgroundColor = MasterStyle.primaryBackgroundColor

    static let submitButton = MasterStyle.commonButtonStyle()

    static var emailAddressTextField: TextFieldStyle = MasterStyle.commonTextFieldStyle().customize {
        $0.backgroundColor = UIColor.designFirstLightGray()
    }
}
