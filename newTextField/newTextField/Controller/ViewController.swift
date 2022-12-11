//
//  ViewController.swift
//  newTextField
//
//  Created by Hakan Sezer on 11.12.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var warningLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapButton(_ sender: UIButton) {
        
        if usernameTextField.text == "Hakan" && passwordTextField.isHidden {
            passwordTextField.isHidden = false
            warningLabel.isHidden = true
            
        } else if usernameTextField.text != "Hakan" || passwordTextField.text != "12345" {
            
            warningLabel.isHidden = false
            warningLabel.text = "Hatalı Girdiniz."
            warningLabel.textColor = UIColor.red
            
        }else {
            
            if !(passwordTextField.isHidden) && passwordTextField.text == "12345" {
                activityIndicator.startAnimating()
                warningLabel.isHidden = true
            }
        }
        print("UserName: \(String(describing: usernameTextField.text))") // OptionOne
        print("Password: \(passwordTextField.text ?? "Password")") // OptionTwo
    }

}

