//
//  KeyboardViewController.swift
//  AutoEye
//
//  Created by Harshini Oruganti on 4/18/23.
//

import UIKit
import UserNotifications

class KeyboardViewController: UIViewController {

    @IBOutlet weak var licensePlateNoTextField: UITextField!
    @IBOutlet weak var carMakeTextField: UITextField!
    @IBOutlet weak var carColorTextField: UITextField!
    

    @IBAction func notifyCarDetails(_ sender: UIButton) {
        let identifier = "my-notification"
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.title = "Your \(carColorTextField.text!) \(carMakeTextField.text!)'s taillight has been reported as nonfunctional."
        content.body = "The vehicle's license plate number is \(licensePlateNoTextField.text!). Please be advised to check."
        content.sound = UNNotificationSound.default
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: true)
            
        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            
            
        center.removePendingNotificationRequests(withIdentifiers: [identifier])
        center.add(request) { (error) in
        if let error = error {
                print("Error: \(error.localizedDescription)")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkForPermission()

        // Do any additional setup after loading the view.
    }
    
    func checkForPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            if granted {
                print("Permission granted.")
            } else {
                print("Permission denied.")
            }
        }
    }
        
    func dispatchNotification(){
        
            
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
