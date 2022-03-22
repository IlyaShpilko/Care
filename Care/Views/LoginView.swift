//
//  LogoView.swift
//  CareMarion
//
//  Created by Ilya Shpilko on 3/5/22.
//

import UIKit

class LoginView: UIView {
    
    // MARK: - Properties
    lazy var logoImage: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 146, y: 58, width: 123, height: 128)
        image.image = UIImage(systemName: "icloud.fill")
        image.contentMode = .scaleAspectFit
        image.tintColor = .systemGray5
        image.backgroundColor = .white
        return image
    }()
    
    lazy var companyAppleLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 146, y: 164, width: 121, height: 21)
        label.text = "Company Apple"
        label.textColor = .systemGray
        return label
    }()
    
    lazy var signInLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 20, y: 247, width: 102, height: 44)
        label.text = "Sign In"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 20, y: 299, width: 102, height: 21)
        label.text = "Email"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .red
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 328, width: 374, height: 34))
        textField.backgroundColor = .white
        textField.placeholder = "Введите email"
        textField.keyboardType = .emailAddress
        textField.autocapitalizationType = .none
        textField.bottomBorder()
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 20, y: 370, width: 102, height: 21)
        label.text = "Password"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .red
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 399, width: 374, height: 34))
        textField.backgroundColor = .white
        textField.placeholder = "Введите пароль"
        textField.isSecureTextEntry = true
        textField.autocapitalizationType = .none
        textField.bottomBorder()
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 20, y: 491, width: 374, height: 40)
        button.setTitle("Войти", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.backgroundColor = .red
        button.tintColor = .white
        button.layer.cornerRadius = 5
        return button
    }()
    
    // MARK: - Actions
    func checkInTarget(_ target: Any, selectot: Selector) {
        loginButton.addTarget(target, action: selectot, for: .touchUpInside)
    }
}

