//
//  AppDelegate.swift
//  AutoEye
//
//  Created by Harshini Oruganti on 3/22/23.
//

import UIKit
import UserNotifications
import ParseSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        ParseSwift.initialize(applicationId: "FAJRXteEnYzXSW3j1JSjetMah2nwdaBzlweZVV5e",
                              clientKey: "n9QrXm9kXW4zxQg8X6q5wt9kLIdSq6h1m1QElV4x",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

// Sample Usage
//
// let score = GameScore(playerName: "Kingsley", points: 13)



//Notifications skeleton
/*
UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge, .carPlay ]){
         (granted, error) in
         print("Permission granted: \(granted)")
         guard granted else { return }
         self.getNotificationSettings()
}
func getNotificationSettings() {
    UNUserNotificationCenter.current().getNotificationSettings { (settings) in
        print("Notification settings: \(settings)")
        guard settings.authorizationStatus == .authorized else { return }
        UIApplication.shared.registerForRemoteNotifications()
    }
}

func application(_ application: UIApplication,
                 didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    createInstallationOnParse(deviceTokenData: deviceToken)
}

func application(_ application: UIApplication,
                 didFailToRegisterForRemoteNotificationsWithError error: Error) {
    print("Failed to register: \(error)")
}

func createInstallationOnParse(deviceTokenData:Data){
    if let installation = PFInstallation.current(){
        installation.setDeviceTokenFrom(deviceTokenData)
        installation.saveInBackground {
            (success: Bool, error: Error?) in
            if (success) {
                print("You have successfully saved your push installation to Back4App!")
            } else {
                if let myError = error{
                    print("Error saving parse installation \(myError.localizedDescription)")
                }else{
                    print("Uknown error")
                }
            }
        }
    }
}
*/
