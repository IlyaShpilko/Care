//
//  ViewController.swift
//  CareMarion
//
//  Created by Ilya Shpilko on 3/5/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Properties
    let loginView = LoginView()
    let login = Login()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loginView.logoImage)
        view.addSubview(loginView.companyAppleLabel)
        view.addSubview(loginView.signInLabel)
        view.addSubview(loginView.emailLabel)
        view.addSubview(loginView.emailTextField)
        view.addSubview(loginView.passwordLabel)
        view.addSubview(loginView.passwordTextField)
        view.addSubview(loginView.loginButton)
        
        loginView.checkInTarget(self, selectot: #selector(registrationViewController))
        
        loginView.emailTextField.delegate = self
        loginView.passwordTextField.delegate = self
    }
    
    // MARK: - Actions
    @objc func registrationViewController() {
        guard login.login == loginView.emailTextField.text,
              login.password == loginView.passwordTextField.text else {
                  loginView.loginButton.shake()
                  return
              }
        
        let vc = RegistrationViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    


    
    // MARK: - Touch Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

// MARK: - Text Field Delegate
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
