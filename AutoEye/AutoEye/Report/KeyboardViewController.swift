//
//  KeyboardViewController.swift
//  AutoEye
//
//  Created by Harshini Oruganti on 4/18/23.
//

import UIKit

class KeyboardViewController: UIViewController {

    @IBOutlet weak var licensePlateNoTextField: UITextField!
    @IBOutlet weak var carMakeTextField: UITextField!
    @IBOutlet weak var carColorTextField: UITextField!
    

    @IBAction func notifyCarDetails(_ sender: UIButton) {
        let notification = "Your \(carColorTextField.text!) \(carMakeTextField.text!)'s taillight has been reported as nonfunctional. The vehicle's license plate number is \(licensePlateNoTextField.text!). Please be advised to check."
        
        print(notification);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
