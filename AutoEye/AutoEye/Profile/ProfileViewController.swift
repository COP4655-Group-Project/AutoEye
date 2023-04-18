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
//class ProfileViewController: UIViewController {
//
//
//    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var vehicleInfoLabel: UILabel!
//    @IBOutlet weak var pointsLabel: UILabel!
//    @IBOutlet weak var reportHistoryTableView: UITableView!
//
//    var userProfile: UserProfile?
//
//    override func viewDidLoad() {
//            super.viewDidLoad()
//
//            reportHistoryTableView.dataSource = self
//
//            DatabaseManager.shared.fetchUserProfile { [weak self] (fetchedProfile) in
//                guard let self = self, let fetchedProfile = fetchedProfile else { return }
//                self.userProfile = fetchedProfile
//
//                DispatchQueue.main.async {
//                    self.nameLabel.text = fetchedProfile.name
//                    self.vehicleInfoLabel.text = fetchedProfile.vehicleInfo
//                    self.pointsLabel.text = "\(fetchedProfile.points) Points"
//                    self.reportHistoryTableView.reloadData()
//                }
//            }
//        }
//    }
//
//    extension ProfileViewController: UITableViewDataSource {
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return userProfile?.reportHistory.count ?? 0
//        }
//
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "ReportHistoryCell", for: indexPath)
//
//            if let report = userProfile?.reportHistory[indexPath.row] {
//                cell.textLabel?.text = report.title
//
//                let dateFormatter = DateFormatter()
//                dateFormatter.dateStyle = .medium
//                dateFormatter.timeStyle = .none
//                cell.detailTextLabel?.text = dateFormatter.string(from: report.date)
//            }
//
//            return cell
//        }
//    }

