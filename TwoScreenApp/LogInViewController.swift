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
    
    @IBOutlet weak var logInButton: UIButton! // не уверен нужен ли этот аутлет, точнее не понимаю
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let  welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = "Hey, \(userNameTF.text ?? "Потрачено")!"
    }
     
    @IBAction func logInButtonPressed() {
        if userNameTF.text == "Lex" && passwordTF.text == "12345" {
            return
        } else {
            wrongPassOrUserNameAlert(with: "Oopsy !!!", and: "username or password is incorrect")
        }
    }
    
    @IBAction func forgotUNAlert() {
        showPromptAlert(with: "Oopsy !!!", and: "Your name is Lex")
    }
    
    @IBAction func forgotPassAlert() {
        showPromptAlert(with: "Oopsy !!!", and: "The password is 12345")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

// MARK: - Private Methods
extension LogInViewController {
    private func showPromptAlert(with title: String, and massege: String) {
        let alert = UIAlertController(title: title, message: massege, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    private func wrongPassOrUserNameAlert(with title: String, and massege: String) {
        let alert = UIAlertController(title: title, message: massege, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
