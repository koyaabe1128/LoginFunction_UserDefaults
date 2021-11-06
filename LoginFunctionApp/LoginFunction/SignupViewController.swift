//
//  SignupViewController.swift
//  LoginFunctionApp
//
//  Created by Koya on 2021/11/05.
//

import UIKit

class SignupViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmationPasswordTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var toLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true

    }
    
    @IBAction func signupButton(_ sender: Any) {
        
        let userName = userNameTextField.text
        let password = passwordTextField.text
        let confirmationPassword = confirmationPasswordTextField.text
        
        // 空白ではないか確認
        if userName == "" || password == "" || confirmationPassword == "" {
            myAlertMessage(myMessage: "全て記入してください。")
            return
        }
        
        // パスワードが一致しているか確認
        if password != confirmationPassword {
            myAlertMessage(myMessage: "パスワードが一致していません。")
            return
        }
        
        // 登録
        UserDefaults.standard.set(userName, forKey: "userName")
        UserDefaults.standard.set(password, forKey: "password")
        
        // 登録ができたらメイン画面に遷移
        let mainVC = storyboard?.instantiateViewController(withIdentifier: "MainView") // storyboardIDを設定しなければならない
        mainVC?.modalPresentationStyle = .fullScreen // 遷移先画面をフルスクリーンにする
        self.present(mainVC!, animated: true, completion: nil)
        
    }
    
    func myAlertMessage(myMessage: String) {
        let myAlert = UIAlertController(title: "Alert", message: myMessage, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler:nil)
        myAlert.addAction(okAction)
        self.present(myAlert,animated: true, completion: nil)
    }
    
    @IBAction func toLoginButton(_ sender: Any) {
    }
    
}
