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
        
        let userName = userNameTextField.text
        let password = passwordTextField.text
        let registeredUserName = UserDefaults.standard.string(forKey: "userName")
        let registeredPassword = UserDefaults.standard.string(forKey: "password")
        
        // ユーザーネームとパスワードのどちらか一方でも違う場合
        if userName != registeredUserName || password != registeredPassword {
            myAlertMessage(myMessage: "ユーザーネームかパスワードが違います。")
            return
        }
        
        // 入力された値が登録された値と合っている場合
        if userName == registeredUserName {
            if password == registeredPassword {
                UserDefaults.standard.set(true, forKey: "LoggedIn")
                let mainVC = storyboard?.instantiateViewController(withIdentifier: "MainView") // storyboardIDを設定しなければならない
                mainVC?.modalPresentationStyle = .fullScreen // 遷移先画面をフルスクリーンにする
                self.present(mainVC!, animated: true, completion: nil)
            }
        }
        
    }
    
    @IBAction func toSignupButton(_ sender: Any) {
    }
    
    func myAlertMessage(myMessage: String) {
        let myAlert = UIAlertController(title: "Alert", message: myMessage, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert,animated: true, completion: nil)
    }
    
}
