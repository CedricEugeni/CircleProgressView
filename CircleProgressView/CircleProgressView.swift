//
//  CircleProgressView.swift
//  CircleProgressView
//
//  Created by Cédric Eugeni on 22/04/2017.
//  Copyright © 2017 cedric. All rights reserved.
//

import UIKit

class CircleProgressView: UIView {
    var progress: Double? = .none {
        didSet {
            if let p = progress {
                if p < 0 || p > 100 { // invalid value
                    self.progress = .none
                } else {
                    if p == 0 { // dashed circle
                        
                    } else { // full circle with value
                        
                    }
                }
            } else { // progress == .none
                self.isHidden = true
            }
        }
    }
}
