//
//  MainViewController.swift
//  LoginFunctionApp
//
//  Created by Koya on 2021/11/05.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let LoginSucceed = UserDefaults.standard.bool(forKey: "LoggedIn")
        
        if !LoginSucceed {
            let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginView")
            self.present(loginVC!, animated: true, completion: nil)
        }
        
    }
    
}
