//
//  LogInViewController.swift
//  TwoScreenApp
//
//  Created by Повелитель on 25.08.2021.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func logInButtonPressed() {
    }
    @IBAction func forgotUNAlert() {
    }
    @IBAction func forgotPassAlert() {
    }
    

}

// MARK: - Private Methods
extension LogInViewController {
    private func showAlert(with title: String, and massege: String) {
        let alert = UIAlertController(title: title, message: massege, preferredStyle: .alert)
        present(alert, animated: true)
    }
    
}
