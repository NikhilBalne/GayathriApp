//
//  UIView+Extension.swift
//  Gayathri
//
//  Created by Nikhil Balne on 15/12/20.
//

import UIKit

extension UIView {
    
    //Mark: To round Corners
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {

        self.clipsToBounds = true
        self.layer.cornerRadius = radius
        var masked = CACornerMask()
        if corners.contains(.topLeft) { masked.insert(.layerMinXMinYCorner) }
        if corners.contains(.topRight) { masked.insert(.layerMaxXMinYCorner) }
        if corners.contains(.bottomLeft) { masked.insert(.layerMinXMaxYCorner) }
        if corners.contains(.bottomRight) { masked.insert(.layerMaxXMaxYCorner) }
        self.layer.maskedCorners = masked

    }
}
