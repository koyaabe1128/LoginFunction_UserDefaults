//
//  LoginViewController.swift
//  LoginFunctionApp
//
//  Created by Koya on 2021/11/05.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var toSignupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
    }
    @IBAction func loginButton(_ sender: Any) {
    }
    
    @IBAction func toSignupButton(_ sender: Any) {
    }
    
}
