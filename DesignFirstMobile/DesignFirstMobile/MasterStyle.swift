//
// Created by Jordan Schaenzle on 5/8/16.
// Copyright (c) 2016 Jordan Schaenzle. All rights reserved.
//

import Foundation
import UIKit

class MasterStyle {
    static let primaryBackgroundColor = UIColor.whiteColor()

    // Buttons
    static let primaryButtonBackgroundColor = UIColor.clearColor()
    static let primaryButtonTextColor = UIColor.blueColor()
    static func commonButtonStyle() -> ButtonStyle {
        return ButtonStyle(
            backgroundColor: primaryButtonBackgroundColor,
            textColor: primaryButtonTextColor
        )
    }

    // Text Fields
    static let primaryTextFieldBackgroundColor = UIColor.clearColor()
    static let primaryTextFieldTextColor = UIColor.blueColor()
    static func commonTextFieldStyle() -> TextFieldStyle {
        return TextFieldStyle(
            backgroundColor: primaryTextFieldBackgroundColor,
            textColor: primaryTextFieldTextColor
        )

    }
}

extension UIColor {
    static func designFirstLightGray() -> UIColor {
        return UIColor.grayColor().colorWithAlphaComponent(0.5)
    }
}

class ButtonStyle {
    var backgroundColor: UIColor
    var textColor: UIColor

    init(backgroundColor: UIColor, textColor: UIColor) {
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
}

class TextFieldStyle  {
    var backgroundColor: UIColor
    var textColor: UIColor

    init(backgroundColor: UIColor, textColor: UIColor) {
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }

    func customize(block: (TextFieldStyle) -> ()) -> TextFieldStyle {
        block(self)
        return self
    }
}

