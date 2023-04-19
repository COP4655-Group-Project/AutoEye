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
import PhotosUI
import ParseSwift

//Profile Skeleton
class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var nameProfile: UILabel!
    @IBOutlet weak var carMakeProfile: UILabel!
    @IBOutlet weak var licensePlateProfile: UILabel!
    
    @IBOutlet weak var starStepper: UIStepper!
    @IBOutlet weak var numberOfStars: UILabel!
    
    @IBOutlet weak var profileImageView: UIImageView!
    private var pickedImage: UIImage?
    
    
    @IBAction func uploadProfilePictureTapped(_ sender: UIButton) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        imagePickerController.sourceType = .photoLibrary
        
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let editedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            profileImageView.image = editedImage
        } else if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            profileImageView.image = originalImage
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    
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

//import UIKit
//import PhotosUI
//import ParseSwift
//
//// TODO: Import Photos UI
//// TODO: Import Parse Swift
//
//class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//
//    // MARK: Outlets
//
//
//    @IBOutlet weak var profileImageView: UIImageView!
//    private var pickedImage: UIImage?
//
//
//    @IBAction func uploadProfilePictureTapped(_ sender: UIButton) {
//        let imagePickerController = UIImagePickerController()
//        imagePickerController.delegate = self
//        imagePickerController.allowsEditing = true
//        imagePickerController.sourceType = .photoLibrary
//
//        present(imagePickerController, animated: true, completion: nil)
//    }
//
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        if let editedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
//            profileImageView.image = editedImage
//        } else if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
//            profileImageView.image = originalImage
//        }
//
//        dismiss(animated: true, completion: nil)
//    }
//
//}
