//
//  SignUpViewController.swift
//  AutoEye
//
//  Created by Maggie LaFratta on 3/24/23.
//

import Foundation

import UIKit
//***reiterating package import as self note
//import ParseSwift

class SignUpViewController: UIViewController {
    //need to connect these in storyboard
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var carMakeField: UITextField!
    @IBOutlet weak var carModelField: UITextField!
    @IBOutlet weak var licensePlateModel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onSignUpTapped(_ sender: Any) {

        // Make sure all fields are non-nil and non-empty.
        guard let firstname = firstNameField.text,
              let lastname = lastNameField.text,
              let username = usernameField.text,
              let email = emailField.text,
              let password = passwordField.text,
              let carmake = carMakeField.text,
              let carmodel = carModelField.text,
              let licenseplate = licensePlateModel.text,
              !firstname.isEmpty,
              !lastname.isEmpty,
              !username.isEmpty,
              !email.isEmpty,
              !password.isEmpty,
              !carmake.isEmpty,
              !carmodel.isEmpty,
              !licenseplate.isEmpty
        else {
            showMissingFieldsAlert()
            return
        }

        var newUser = User()
        newUser.firstname = firstname
        newUser.lastname = lastname
        newUser.username = username
        newUser.email = email
        newUser.password = password
        newUser.carMake = carmake
        newUser.carModel = carmodel
        newUser.licensePlate = licenseplate

        newUser.signup { [weak self] result in

            switch result {
            case .success(let user):

                print("✅ Successfully signed up user \(user)")

                // Post a notification that the user has successfully signed up.
                NotificationCenter.default.post(name: Notification.Name("login"), object: nil)

            case .failure(let error):
                // Failed sign up
                print("fail")
                self?.showAlert(description: error.localizedDescription)
            }
        }

    }

    private func showMissingFieldsAlert() {
        let alertController = UIAlertController(title: "Oops...", message: "We need all fields filled out in order to sign you up.", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true)
    }
}

