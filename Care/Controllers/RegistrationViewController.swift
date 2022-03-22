//
//  RegistrationViewController.swift
//  CareMarion
//
//  Created by Ilya Shpilko on 3/5/22.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    // MARK: - Properties
    let registrationView = RegistrationView()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Care Mario"
        
        view.addSubview(registrationView.fullNameLabel)
        view.addSubview(registrationView.fullNameTextField)
        view.addSubview(registrationView.numberOfGuestsLabel)
        view.addSubview(registrationView.numberOfGuestsTextField)
        view.addSubview(registrationView.numberOfTableLabel)
        view.addSubview(registrationView.numberOfTableTextField)
        view.addSubview(registrationView.tableReservationLabel)
        view.addSubview(registrationView.tableReservationSwitch)
        view.addSubview(registrationView.prepaymentLabel)
        view.addSubview(registrationView.prepaymentSwitch)
        view.addSubview(registrationView.vipRoomLabel)
        view.addSubview(registrationView.vipRoomSwitch)
        view.addSubview(registrationView.issueCheckButton)
        
        registrationView.issueCheckButtonTarget(self, selector: #selector(issueCheckAlert))
        
        registrationView.fullNameTextField.delegate = self
        registrationView.numberOfTableTextField.delegate = self
        registrationView.numberOfGuestsTextField.delegate = self
    }
    
    // MARK: - Actions
    @objc func issueCheckAlert() {
        let alert = UIAlertController(title: "Выставить чек?", message: " ", preferredStyle: .alert)
        let action = UIAlertAction(title: "чек", style: .default) { action in
            let vc = CheckViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        alert.addAction(action)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Touch Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

// MARK: Text Field Delegate
extension RegistrationViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
