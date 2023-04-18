//
//  ViewControllerExtensions.swift
//  AutoEye
//
//  Created by Maggie LaFratta on 4/12/23.
//

import UIKit

extension UIViewController {

    // Shows an alert with the given description or default text if nil.
    func showAlert(description: String? = nil) {
        let alertController = UIAlertController(title: "Oops...", message: "\(description ?? "Unknown error")", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true)
    }
}
