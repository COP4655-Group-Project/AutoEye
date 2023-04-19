//
//  LoginViewController.swift
//  AutoEye
//
//  Created by Maggie LaFratta on 3/24/23.
// hello checking to see if this is working

import Foundation
import UIKit
import ParseSwift

class LoginViewController: UIViewController {

        //****Need to make login page in storyboard for IBOutlets
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onLoginTapped(_ sender: Any) {
        
        // Make sure all fields are non-nil and non-empty.
        guard let username = usernameField.text,
              let password = passwordField.text,
              !username.isEmpty,
              !password.isEmpty
        else
        {
            showMissingFieldsAlert()
            return
        }
        
        User.login(username: username, password: password) { [weak self] result in
            
            switch result {
            case .success(let user):
                self?.performSegue(withIdentifier: "LoginToMain", sender: self)
                
                // Get TabController to show
                /*let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                let MainTabBarController = mainStoryBoard.instantiateViewController(withIdentifier: "TabBarController") as! UITabBarController)
                self.present(MainTabBarController, animated: true, completion: nil)*/
                
                
                print("✅ Successfully logged in as user: \(user)")
                // Post a notification that the user has successfully logged in.
                NotificationCenter.default.post(name: Notification.Name("login"), object: nil)
                
            case .failure(let error):
                // Show an alert for any errors
                self?.showAlert(description: error.localizedDescription)

            }
        }
    }

    private func showMissingFieldsAlert() {
        let alertController = UIAlertController(title: "Oops...", message: "We need all fields filled out in order to log you in.", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true)
    }
}
