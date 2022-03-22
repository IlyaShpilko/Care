//
//  Extension UITextField.swift
//  CareMarion
//
//  Created by Ilya Shpilko on 3/9/22.
//

import UIKit

extension UITextField {
    func bottomBorder() {
        layer.shadowOffset = CGSize(width: 0.0, height: 1.1)
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 0.0
        layer.shadowColor = UIColor.lightGray.cgColor
    }
}
