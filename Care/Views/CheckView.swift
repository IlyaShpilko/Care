//
//  CheckViewController.swift
//  CareMarion
//
//  Created by Ilya Shpilko on 3/6/22.
//

import UIKit

class CheckView: UIView {

    // MARK: - Properties
    lazy var tableView: UITableView = {
       let tableView = UITableView(frame: CGRect(x: 20, y: 107, width: 374, height: 511))
        tableView.register(UINib(nibName: "OrderCell", bundle: nil), forCellReuseIdentifier: "OrderCell")
        tableView.tableHeaderView = UIView()
        return tableView
    }()
    
    lazy var payButton: UIButton = {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 204, y: 685, width: 190, height: 40)
        button.setTitle("итого: 700 руб", for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor(named: "ColorForPayButton")
        button.layer.cornerRadius = 5
        return button
    }()
    
    lazy var finalTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 50, y: 750, width: 314, height: 34))
        textField.backgroundColor = .white
        textField.isUserInteractionEnabled = false
        textField.bottomBorder()
        return textField
    }()
    
    // MARK: - Actions
    func payButtonTarget(_ target: Any, selector: Selector) {
        payButton.addTarget(target, action: selector, for: .touchUpInside)
    }
}
