//
//  Extension Button.swift
//  CareMarion
//
//  Created by Ilya Shpilko on 3/10/22.
//

import UIKit

extension UIButton {
    
    func shake() {
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 5, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 5, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.toValue = toValue
        shake.fromValue = fromValue
        
        layer.add(shake, forKey: nil)
    }
}
