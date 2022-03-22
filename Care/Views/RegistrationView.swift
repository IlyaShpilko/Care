//
//  RegistrationView.swift
//  CareMarion
//
//  Created by Ilya Shpilko on 3/6/22.
//

import UIKit

class RegistrationView: UIView {
    
    // MARK: - Properties
    lazy var fullNameLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 20, y: 146, width: 374, height: 21)
        label.text = "Фио"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .red
        return label
    }()
    
    lazy var fullNameTextField: UITextField = {
        let textField = UITextField()
        textField.frame = CGRect(x: 20, y: 175, width: 374, height: 34)
        textField.backgroundColor = .white
        textField.placeholder = "Введите фио"
        textField.keyboardType = .emailAddress
        textField.autocapitalizationType = .words
        textField.bottomBorder()
        return textField
    }()
    
    lazy var numberOfGuestsLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 20, y: 217, width: 374, height: 21)
        label.text = "Количество гостей"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .red
        return label
    }()
    
    lazy var numberOfGuestsTextField: UITextField = {
        let textField = UITextField()
        textField.frame = CGRect(x: 20, y: 246, width: 374, height: 34)
        textField.backgroundColor = .white
        textField.placeholder = "Введите количество"
        textField.bottomBorder()
        return textField
    }()
    
    lazy var numberOfTableLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 20, y: 288, width: 102, height: 21)
        label.text = "Номер стола"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .red
        return label
    }()
    
    lazy var numberOfTableTextField: UITextField = {
        let textField = UITextField()
        textField.frame = CGRect(x: 20, y: 317, width: 374, height: 34)
        textField.backgroundColor = .white
        textField.placeholder = "Стол номер"
        textField.bottomBorder()
        return textField
    }()
    
    lazy var tableReservationLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 20, y: 420, width: 299, height: 21)
        label.text = "    Бронировали стол?"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .red
        return label
    }()
    
    lazy var tableReservationSwitch: UISwitch = {
       let newSwitch = UISwitch()
        newSwitch.frame = CGRect(x: 300, y: 415, width: 0, height: 0)
        return newSwitch
    }()
    
    lazy var prepaymentLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 20, y: 485, width: 299, height: 21)
        label.text = "    Предоплата?"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .red
        return label
    }()
    
    lazy var prepaymentSwitch: UISwitch = {
       let newSwitch = UISwitch()
        newSwitch.frame = CGRect(x: 300, y: 480, width: 0, height: 0)
        return newSwitch
    }()
    
    lazy var vipRoomLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 20, y: 550, width: 299, height: 21)
        label.text = "    VIP комната?"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .red
        return label
    }()
    
    lazy var vipRoomSwitch: UISwitch = {
       let newSwitch = UISwitch()
        newSwitch.frame = CGRect(x: 300, y: 545, width: 0, height: 0)
        return newSwitch
    }()
    
    lazy var issueCheckButton: UIButton = {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 20, y: 798, width: 374, height: 40)
        button.setTitle("Выставить счет", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.backgroundColor = .red
        button.tintColor = .white
        button.layer.cornerRadius = 5
        return button
    }()
    
    // MARK: - Actions
    func issueCheckButtonTarget(_ target: Any, selector: Selector) {
        issueCheckButton.addTarget(target, action: selector, for: .touchUpInside)
    }
}
