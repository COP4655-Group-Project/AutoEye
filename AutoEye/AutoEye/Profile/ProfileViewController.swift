//
//  ProfileViewController.swift
//  AutoEye
//
//  Created by Joshua Abrams on 4/18/23.
//
/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/

import UIKit

//Profile Skeleton
class ProfileViewController: UIViewController {

    
    @IBOutlet weak var nameProfile: UILabel!
    @IBOutlet weak var carMakeProfile: UILabel!
    @IBOutlet weak var licensePlateProfile: UILabel!
    
    @IBOutlet weak var starStepper: UIStepper!
    @IBOutlet weak var numberOfStars: UILabel!
    
    // var userProfile: UserProfile?
    
    
    @IBAction func starIncrease(_ sender: UIStepper) {
        numberOfStars.text = "\(Int(sender.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    

/*    extension ProfileViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return userProfile?.reportHistory.count ?? 0
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReportHistoryCell", for: indexPath)

            if let report = userProfile?.reportHistory[indexPath.row] {
                cell.textLabel?.text = report.title

                let dateFormatter = DateFormatter()
               dateFormatter.dateStyle = .medium
                dateFormatter.timeStyle = .none
                cell.detailTextLabel?.text = dateFormatter.string(from: report.date)
            }

            return cell
        } */
    }

