//
//  CircleProgressView.swift
//  CircleProgressView
//
//  Created by Cédric Eugeni on 22/04/2017.
//  Copyright © 2017 cedric. All rights reserved.
//

import UIKit

open class CircleProgressView: UIView {
    /**
     Progress value that will be used by CircleProgressView to draw circle.
     
     This value can be set to .none to make this view disappear.
     
     This value must be between 0 and 100.
     */
    open var progress: Double? = .none {
        didSet {
            // Cleaning all possible previous layers
            self.layer.sublayers?.forEach({ (lay) in
                lay.removeFromSuperlayer()
            })
            
            // Testing values
            if let p = progress {
                if p < 0 || p >= 100 { // Invalid value or 100
                    self.progress = .none
                } else {
                    if p == 0 { // Dashed circle
                        let circle = CAShapeLayer(layer: self.layer)
                        circle.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height), cornerRadius: self.frame.width / 2).cgPath
                        circle.fillColor = UIColor.clear.cgColor
                        circle.strokeColor = self.tintColor.cgColor
                        circle.lineWidth = 5
                        circle.lineDashPattern = [10, 15]
                        self.layer.addSublayer(circle)
                    } else { // Full circle with value
                        // Draw outer circle
                        let circle = CAShapeLayer(layer: self.layer)
                        circle.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height), cornerRadius: self.frame.width / 2).cgPath
                        circle.fillColor = UIColor.clear.cgColor
                        circle.strokeColor = self.tintColor.cgColor
                        circle.lineWidth = 5
                        self.layer.addSublayer(circle)
                        
                        // Draw inner disc
                        let startAngle: CGFloat = -(CGFloat.pi / 2)
                        let angle: CGFloat = 2 * CGFloat.pi * (CGFloat(p) / 100)
                        let endAngle: CGFloat = startAngle + angle
                        let center: CGPoint = CGPoint(x: self.frame.width / 2, y: self.frame.width / 2)
                        let portionPath: UIBezierPath = UIBezierPath()
                        portionPath.move(to: center)
                        portionPath.addArc(withCenter: center, radius: self.frame.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: true)
                        portionPath.close()
                        portionPath.fill()
                        let layer: CAShapeLayer = CAShapeLayer(layer: self.layer)
                        layer.path = portionPath.cgPath
                        layer.fillColor = self.tintColor.cgColor
                        self.layer.addSublayer(layer)
                    }
                }
            } else { // Progress == .none
                self.isHidden = true
            }
        }
    }
}
