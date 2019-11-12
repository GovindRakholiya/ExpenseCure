//
//  buttonExtension.swift
//  Expensecure
//
//  Created by Ishan Vyas on 01/11/19.
//  Copyright © 2019 Coddiction. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    func selectedButton() {
        self.setTitleColor(Global.buttonBlueTextColor, for: .normal)
        self.titleLabel?.font = Global.buttonHeavyFont
        self.backgroundColor = UIColor.white
    }
    
    func unSelectedButton() {
        self.setTitleColor(UIColor.white.withAlphaComponent(0.5), for: .normal)
        self.titleLabel?.font = Global.buttonHeavyFont
        self.backgroundColor = Global.unSelectedButtonBackgroundColor
    }
}


extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
