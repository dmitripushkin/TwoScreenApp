//
//  WelcomeViewController.swift
//  TwoScreenApp
//
//  Created by Повелитель on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    var userName: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName   
    }
  
}
