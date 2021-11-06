//
//  MainViewController.swift
//  LoginFunctionApp
//
//  Created by Koya on 2021/11/05.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var loggedInUserName: UILabel!
    @IBOutlet weak var loggedInPassword: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 試しに名前とパスワードを表示してみる
        let userName = UserDefaults.standard.string(forKey: "userName")
        loggedInUserName.text = userName
        
        let password = UserDefaults.standard.string(forKey: "password")
        loggedInPassword.text = password
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let LoginSucceed = UserDefaults.standard.bool(forKey: "LoggedIn")
        
        if !LoginSucceed {
            let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginView")
            self.present(loginVC!, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func logoutButton(_ sender: Any) {
        
        UserDefaults.standard.set(false, forKey: "LoggedIn")
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
