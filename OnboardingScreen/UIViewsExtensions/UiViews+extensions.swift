//
//  UiViews+extensions.swift
//  OnboardingScreen
//
//  Created by Jaweria Khan on 30/08/2022.
//

import UIKit

extension UIView {
    //showing the set values at the storyboad inspection
   @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
